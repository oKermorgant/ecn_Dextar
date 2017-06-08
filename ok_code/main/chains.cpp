#include <iostream>

#include <opencv2/core/core.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/imgproc/imgproc.hpp>

#include <chain.h>
#include <galg.h>
#include <find_chains.h>

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
    // load  image to gray
    Mat im1, img, im_th, im = imread("face.pbm");
    cv::cvtColor(im, img, cv::COLOR_BGR2GRAY);

    // first contour detection
    vector<vector<Point> > contours;
    vector<Vec4i> hierarchy;

    // live?
    if(false)
    {
        cv::VideoCapture cap(0);
        cv::namedWindow("Live");
        int clic_evt = cv::EVENT_FLAG_ALTKEY;
        cv::setMouseCallback("Live", OnMouseSelect, (void*)&clic_evt);
        int fps = cap.get(cv::CAP_PROP_FPS);

        unsigned int rows = cap.get(cv::CAP_PROP_FRAME_HEIGHT);
        unsigned int cols = cap.get(cv::CAP_PROP_FRAME_WIDTH);
        Rect roi(int(cols/4.), 0, int(cols/2.), rows);

        // dynamic params
        int can1 = 100, can2 = 200, k = 2, s = 0;
        createTrackbar( "Kernel", "Live", &k, 10, on_trackbar );
        createTrackbar( "Sigma", "Live", &s, 10, on_trackbar );
        createTrackbar( "Canny1", "Live", &can1, 255, on_trackbar );
        createTrackbar( "Canny2", "Live", &can2, 255, on_trackbar );

        int count = 0;
        while(cap.isOpened() && clic_evt == cv::EVENT_FLAG_ALTKEY)
        {
            cap.read(img);
            img.copyTo(im1);
            //im = img(roi);
            img.copyTo(im);
            // gray
            cv::cvtColor(im, im_th, cv::COLOR_BGR2GRAY);
            // blur
            cv::GaussianBlur(im_th, img ,Size(2*k+1,2*k+1),s,s);
            // canny
            cv::Canny(img, im_th, can1, can2);
            cv::imshow("Live", im_th);
            cv::waitKey(1000/fps);

            //if(count++ % fps == 0)  // 1 sec
            {
                cv::findContours(im_th, contours, hierarchy, cv::RETR_LIST, cv::CHAIN_APPROX_NONE);
                cv::drawContours(im1, contours, -1, Scalar(0,255,0), 1);
                cv::imshow("Contours", im1);
                cout << "Number of contours:"<< contours.size() << endl;
                cv::waitKey(1000/fps);

                // change contour to chains
                // RefineContours(contours);
                //cout << "Will process " << contours.size() << " chains" << endl;
            }
        }
        im_th.copyTo(img);
        cv::cvtColor(im_th, im, cv::COLOR_GRAY2BGR);
    }

    // end live image

    // find base contours
    cv::findContours(img, contours, hierarchy, cv::RETR_LIST, cv::CHAIN_APPROX_NONE);

    // change contour to list of chains
    RefineContours(contours);



    // draw chains iteratively
    for(unsigned int i=0;i<contours.size();++i)
    {
        // draw all this contour
        for(unsigned int j=0;j<contours[i].size();++j)
            cv::circle(im, contours[i][j], 1,Scalar(0,0,255));
        imshow(" contours", im);
        cv::waitKey(0);
        for(unsigned int j=0;j<contours[i].size();++j)
        {
            cv::circle(im, contours[i][j], 1,Scalar(rand()%256,rand()%256,rand()%256));
            imshow(" contours", im);
            cv::waitKey(1);
        }
    }

    imshow("chains", im);
    cv::waitKey(0);

    // build nodes = distance from one chain ending to the next one
    std::vector<std::vector<double> > nodes(2*contours.size());
    for(auto &node: nodes)
        node.resize(2*contours.size());

    Point p11, p12, p21, p22;
    for(unsigned int i=0;i<contours.size();++i)
    {
        for(unsigned int j=0;j<contours.size();++j)
        {
            if(i != j)
            {
                p11 = contours[i].front();
                p12 = contours[i].back();
                p21 = contours[j].front();
                p22 = contours[j].back();
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

    DrawChain(contours, best, im, "Best", 5, "../DrawFace.mp4");
    DrawChain(contours, random, im, "Random", 5);

    cv::waitKey(0);


}
