#include <iostream>
#include <fstream>
#include <string>
#include <sstream>

#include <opencv2/core/core.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/objdetect/objdetect.hpp> //for face detection
#include <opencv2/features2d/features2d.hpp>

#include <chain.h>
#include <galg.h>
#include <find_chains.h>
#include <configuration.h>
#include <script_generator.h>

using namespace std;
using namespace cv;
using namespace ok_galg;


void OnMouseSelect(int evt, int x, int y, int flags, void* click) {
    if(evt == cv::EVENT_LBUTTONDBLCLK)
    {
        int *c = (int*) click;
        *c = evt;
    }
}

void on_trackbar( int, void* ) {}

int main(void)
{
    // load the parameters from the configFile
    Configuration configuration("../configFile.txt");

    Mat img, im_th, face, im, im1;
    Rect face_i;

    int count = 0;
    std::string fileName;

    vector<vector<Point> > contours;
    vector<Vec4i> hierarchy;

    cv::namedWindow("Live", WINDOW_AUTOSIZE | WINDOW_KEEPRATIO | WINDOW_GUI_EXPANDED);

    while(true){

        // live
        if( configuration.liveParam() != -1)
        {
            cv::VideoCapture cap(configuration.webcamParam());
            //cv::namedWindow("Live", WINDOW_AUTOSIZE | WINDOW_KEEPRATIO | WINDOW_GUI_EXPANDED);
            int clic_evt = cv::EVENT_FLAG_ALTKEY;
            cv::setMouseCallback("Live", OnMouseSelect, (void*)&clic_evt);
            int fps = cap.get(cv::CAP_PROP_FPS);

            unsigned int rows = cap.get(cv::CAP_PROP_FRAME_HEIGHT);
            unsigned int cols = cap.get(cv::CAP_PROP_FRAME_WIDTH);
            Rect roi(int(cols/4.), 0, int(cols/2.), rows);

            // dynamic params
            int ellipse_height = configuration.ellipseHeight(), ellipse_width = configuration.ellipseWidth();
            int can1 = configuration.canny1(), can2 = configuration.canny2(), k = configuration.kernel(), s = configuration.sigma();
            createTrackbar( "Ellipse height", "Live", &ellipse_height, 300, on_trackbar );
            createTrackbar( "Ellipse width", "Live", &ellipse_width, 300, on_trackbar );
            createTrackbar( "Kernel", "Live", &k, 10, on_trackbar );
            createTrackbar( "Sigma", "Live", &s, 10, on_trackbar );
            createTrackbar( "Canny1", "Live", &can1, 255, on_trackbar );
            createTrackbar( "Canny2", "Live", &can2, 255, on_trackbar );

            while(cap.isOpened() && clic_evt == cv::EVENT_FLAG_ALTKEY)
            {
                cap.read(img);

                if(img.rows * img.cols)
                {


                    img.copyTo(im);



                    // gray
                    cv::cvtColor(im, im_th, cv::COLOR_BGR2GRAY);

                    // Find the faces in the frame:
                    if(false){
                        CascadeClassifier haar_cascade;
                        haar_cascade.load("/home/alexandre/OpenCV3/opencv/data/haarcascades/haarcascade_frontalcatface.xml");
                        vector< Rect_<int> > faces;
                        haar_cascade.detectMultiScale(im_th, faces);
                        for(int i = 0; i < faces.size(); i++) {
                            Rect face_i = faces[i];
                            rectangle(im_th, face_i, CV_RGB(0, 255,0), 2);
                            Mat faceAlg = im_th(face_i);// Crop the face from the image
                            cv::imshow("face", faceAlg);
                        }
                        im_th.copyTo(face);

                    } else {

                        //Draw an ellipse
                        CvPoint center;
                        center.x = cols/2;
                        center.y = rows/2;
                        CvSize size;
                        size.height = ellipse_height;
                        size.width = ellipse_width;
                        //cv::ellipse(im_th, center, size, 0, 0, 360, CV_RGB(0, 255,0), 1, 8, 0);
                        face_i.x = center.x - size.width;
                        face_i.y = center.y - size.height;
                        face_i.height = 2*size.height;
                        face_i.width = 2*size.width;
                        //rectangle(im_th, face_i, CV_RGB(0, 255,0), 2);
                        face = im_th(face_i);
                        //cv::imshow("face", face);
                    }

                    // blur
                    cv::GaussianBlur(face, im1 ,Size(2*k+1,2*k+1),s,s);
                    // canny
                    cv::Canny(im1, im1, can1, can2);
                    waitKey(1);

                    //if(count++ % fps == 0)  // 1 sec
                    {
                        // translate the contours
                        cv::findContours(im1, contours, hierarchy, cv::RETR_LIST, cv::CHAIN_APPROX_NONE);
                        for (size_t i=0; i<contours.size(); i++){
                            for (size_t j=0; j<contours[i].size(); j++)
                            {
                                contours[i][j].x += face_i.x;
                                contours[i][j].y += face_i.y;
                            }
                        }
                        cv::drawContours(img, contours, -1, Scalar(0,255,0), 1);

                        img.copyTo(im);
                        // add the rectangle in im
                        rectangle(im, face_i, CV_RGB(0, 255,0), 2);
                        //cv::imshow("Contours", im);
                        cout << "Number of contours:"<< contours.size() << endl;
                        cv::waitKey(1000/fps);
                    }

                    Mat im_resize(320,240,CV_8UC1);
                    cv::resize(im1,im_resize,im_resize.size(),0,0,INTER_NEAREST);
                    cv::Mat img_matches;
                    std::vector<KeyPoint> keypoints_object;
                    std::vector<KeyPoint> keypoints_scene;
                    std::vector< cv::DMatch > good_matches;
                    cv::drawMatches( im_resize, keypoints_object, im, keypoints_scene,
                                     good_matches, img_matches, cv::Scalar::all(-1), cv::Scalar::all(-1),
                                     std::vector<char>(), cv::DrawMatchesFlags::NOT_DRAW_SINGLE_POINTS );
                    cv::imshow("Live", img_matches);
                }
            }
            bool flag = false;
            while(!flag){
                ostringstream oss;
                oss << "../img/contourFace" << count << ".pgm";
                fileName = oss.str();
                cout << fileName << endl;
                ifstream file(fileName, ios::in);
                if (!file) flag = true;
                else count += 1;
            }
            imwrite( fileName, im1 );
            cout << "Image has been saved in " << fileName << "." << endl;
        }
        // end live image
        ostringstream oss;
        oss << "../img/contourFace" << count << ".pgm";
        fileName = oss.str();
        im1 = imread(fileName, CV_LOAD_IMAGE_GRAYSCALE); // open in gray scale
        Mat im_draw = imread(fileName);

        destroyWindow("Live");
        cv::namedWindow("Live", WINDOW_AUTOSIZE | WINDOW_KEEPRATIO | WINDOW_GUI_EXPANDED);
        imshow("Live",im1);
        waitKey(0);

        // find base contours
        cv::findContours(im1, contours, hierarchy, cv::RETR_LIST, cv::CHAIN_APPROX_NONE);

        // change contour to list of chains
        RefineContours(contours);
        vector<vector<Point>> chains = contours;

        // draw chains iteratively
        for(unsigned int i=0;i<chains.size();++i)
        {
            // draw all this contour
            for(unsigned int j=0;j<chains[i].size();++j)
                cv::circle(im1, chains[i][j], 1,Scalar(0,0,255));
            imshow("Live", im1);
            cv::waitKey(200);
            for(unsigned int j=0;j<chains[i].size();++j)
            {
                cv::circle(im1, chains[i][j], 1,Scalar(rand()%256,rand()%256,rand()%256));
                imshow("Live", im1);
                waitKey(1);
            }
        }

        // build nodes = distance from one chain ending to the next one
        std::vector<std::vector<double> > nodes(2*chains.size());
        for(auto &node: nodes)
            node.resize(2*chains.size());

        Point p11, p12, p21, p22;
        for(unsigned int i=0;i<chains.size();++i)
        {
            for(unsigned int j=0;j<chains.size();++j)
            {
                if(i != j)
                {
                    p11 = chains[i].front();
                    p12 = chains[i].back();
                    p21 = chains[j].front();
                    p22 = chains[j].back();
                    // write distances depending on direction and order
                    nodes[2*i][2*j] = PointDist(p12, p21);
                    nodes[2*i+1][2*j] = PointDist(p11, p21);
                    nodes[2*i][2*j+1] = PointDist(p12, p22);
                    nodes[2*i+1][2*j+1] = PointDist(p11, p22);
                }
            }
        }

        Chain best(nodes);
        ok_galg::SolveMultiThread(best, 50, 2, false);

        Chain random;
        random.Randomize();

        cout << "random: " << random.cost << " vs GA: " << best.cost << "( 1/" << int((random.cost+0.1)/best.cost) << ")" << endl;

        ostringstream vidoss;
        vidoss << "../video/drawFace" << count << ".avi";
        fileName = vidoss.str();
        DrawChain(chains, best, im_draw, "Live", 5, fileName);
        //DrawChain(chains, random, im1, "Random", 5);

        GenerateFile(chains, best, count);

        cout << "Press Esc to exit or any other key to continue..." << endl;
        int k = waitKey(0);
        if ( k == 27 ) break;
    }
}
