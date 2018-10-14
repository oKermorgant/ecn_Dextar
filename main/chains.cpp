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
#include <parser.h>
#include <script_generator.h>

using namespace std;
using namespace cv;

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
  // load configuration from the configFile
  Config config("config/configFile.txt");

  cout << "using video source " << config.vid << endl;
  cout << "programming mode " << config.mode << endl;
  cout << "draw chains " << config.draw << endl;
  cout << "video and record " << config.vidRec << endl;
  cout << "pixelated effect " << config.pixel << endl;

  Mat img, im_th, face_im, im, im1, im_r, img_matches;
  Rect face_i;

  int count = 0;
  std::string fileName;
  std::string appName = "Drawbot"; //The name of the window is defined here

  vector<vector<Point> > contours;
  vector<Vec4i> hierarchy;
  std::vector<KeyPoint> keypoints_object;
  std::vector<KeyPoint> keypoints_scene;
  std::vector< cv::DMatch > good_matches;

  CvPoint center;
  CvSize size;

  //Creation of the window
  cv::namedWindow(appName, WINDOW_AUTOSIZE | WINDOW_KEEPRATIO | WINDOW_GUI_EXPANDED);

  while(true){
    // normal mode
    if( config.mode != -1)
    {
      cv::VideoCapture cap(config.vid);
      int clic_evt = cv::EVENT_FLAG_ALTKEY;
      cv::setMouseCallback(appName, OnMouseSelect, (void*)&clic_evt);

      unsigned int rows = cap.get(cv::CAP_PROP_FRAME_HEIGHT);
      unsigned int cols = cap.get(cv::CAP_PROP_FRAME_WIDTH);
      Rect roi(int(cols/4.), 0, int(cols/2.), rows);

      // Track-bar for dynamic parameters
      createTrackbar( "Height", appName, &config.ellipse_height, 300, on_trackbar );
      createTrackbar( "Width", appName, &config.ellipse_width, 300, on_trackbar );
      createTrackbar( "Blur", appName, &config.k, 10, on_trackbar );
      createTrackbar( "Lower threshold", appName, &config.lower, 255, on_trackbar );
      createTrackbar( "Upper threshold", appName, &config.upper, 255, on_trackbar );

      while(cap.isOpened() && clic_evt == cv::EVENT_FLAG_ALTKEY)
      {
        cap.read(img);

        if(img.rows * img.cols)
        {
          img.copyTo(im);
          cv::cvtColor(im, im_th, cv::COLOR_BGR2GRAY);

          //Auto-face detection using haar cascade - Not smooth neither robust, to avoid
          if(true){
            CascadeClassifier face_detector, eye_detector;
            face_detector.load("../config/haarcascade_frontalface_default.xml");
            vector< Rect_<int> > faces;
            face_detector.detectMultiScale(im_th, faces);
            auto face = *(std::max_element(faces.begin(), faces.end(), [](const Rect_<int> &f1, const Rect_<int> &f2)
            {return f1.area() < f2.area();}));
            rectangle(im_th, face, CV_RGB(0, 255,0), 2);
            Mat faceAlg = im_th(face);// Crop the face from the image
            cv::imshow("Face", faceAlg);
          im_th.copyTo(face_im);

        }
          else
          {
          //ellipse's parameters
          center.x = cols/2;
          center.y = rows/2;
          size.height = std::max(1, config.ellipse_height);
          size.width = std::max(1, config.ellipse_width);

          //crop the region of interest with a rectangle
          face_i.x = center.x - size.width;
          face_i.y = center.y - size.height;
          face_i.height = 2*size.height;
          face_i.width = 2*size.width;
          face_im = im_th(face_i);

          /*//Use a mask to keep the ellipse only
                        Mat im2(face.rows, face.cols, CV_8UC1, Scalar(0,0,0));
                        ellipse( im2, Point( im2.cols/2, im2.rows/2 ), size, 0, 0, 360, Scalar( 255, 255, 255), -1, 8 );
                        bitwise_and(face,im2,face);*/
        }

        // Gaussian Blur filter
        cv::GaussianBlur(face_im, im1 ,Size(2*config.k+1,2*config.k+1),0,0);//Sigma is computed frome kernel size. Kernel allow a finer tuning
        //imshow("Blur", im1);

        // Canny filter
        cv::Canny(im1, im1, config.lower, config.upper);
        //imshow("Canny", im1);

        // find and translate the contours
        cv::findContours(im1, contours, hierarchy, cv::RETR_LIST, cv::CHAIN_APPROX_NONE);
        for (size_t i=0; i<contours.size(); i++){
          for (size_t j=0; j<contours[i].size(); j++)
          {
            contours[i][j].x += face_i.x;
            contours[i][j].y += face_i.y;
          }
        }

        //Draw the contours in the original image
        cv::drawContours(img, contours, -1, Scalar(0,255,0), 1);

        img.copyTo(im);

        // Draw a green rectangle in the original image according to the size of the ellipse parameters
        //rectangle(im, face_i, CV_RGB(0, 255,0), 2);
        ellipse( im, Point( im.cols/2, im.rows/2 ), size, 0, 0, 360, Scalar( 0, 255, 0), 2, 8 );

        cout << "Number of contours:"<< contours.size() << endl;
        cv::waitKey(10);

        //Scale the contours image to fit in the window without changing its width
        float scale;
        float s1 = (float)im1.cols/240;
        float s2 = float(im1.rows)/float(im.rows);
        if (s1 > s2) scale = s1;
        else scale = s2;
        Mat im_resize(roundf((float)im1.rows/scale), roundf((float)im1.cols/scale),CV_8UC1);
        resize(im1,im_resize,im_resize.size(),0,0,INTER_NEAREST);

        //Display the numbers of contours on the contours image
        ostringstream ossText;
        ossText << "Number of contours:"<< contours.size();
        string text = ossText.str();
        putText(im_resize, text, cvPoint(30,im_resize.rows-30),FONT_HERSHEY_COMPLEX_SMALL, 0.6, cvScalar(200,200,250), 1, CV_AA);
        im_resize.copyTo(im_r);

        //Append the contours image on the left of the original image in a unique image to display on the main window
        cv::drawMatches( im_resize, keypoints_object, im, keypoints_scene,
                         good_matches, img_matches, cv::Scalar::all(-1), cv::Scalar::all(-1),
                         std::vector<char>(), cv::DrawMatchesFlags::NOT_DRAW_SINGLE_POINTS );

        //Display the final result in the main window
        cv::imshow(appName, img_matches);

      }
    }
    //Check the existance of files to avoid overwriting an existing file, a number is added at the end of each file to keep track
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

    // find base contours
    cv::findContours(im1, contours, hierarchy, cv::RETR_LIST, cv::CHAIN_APPROX_NONE);

    // change contour to list of chains
    RefineContours(contours);
    vector<vector<Point>> chains = contours; //Simple renaming to avoid confusion

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

    //Add some comments on the image
    putText(im, "Genetic Algorithm is working, please wait...", cvPoint(30,im.rows-45),FONT_HERSHEY_COMPLEX_SMALL, 0.6, cvScalar(200,200,250), 1, CV_AA);
    cv::drawMatches( im_r, keypoints_object, im, keypoints_scene,
                     good_matches, img_matches, cv::Scalar::all(-1), cv::Scalar::all(-1),
                     std::vector<char>(), cv::DrawMatchesFlags::NOT_DRAW_SINGLE_POINTS );
    cv::imshow(appName, img_matches);
    waitKey(1);

    //Genetic algorithm - find the best ordering solution
    Chain best(nodes);
    SolveMultiThread(best, 50, 2, false);

    //Random solution
    Chain random;
    random.Randomize();

    //Compare the different solution cost
    cout << "random: " << random.cost << " vs GA: " << best.cost << "( 1/" << int((random.cost+0.1)/best.cost) << ")" << endl;

    //Generate the command file for the Dextar robot
    GenerateFile(chains, best, im1.rows, im1.cols, count, config.pixel);

    //Add some comments on the image
    ostringstream ossFile;
    ossFile << "Script generated at ../dextarFile/drawFace" << count << ".mp";
    std::string textGen = ossFile.str();
    putText(im, textGen, cvPoint(30,im.rows-30),FONT_HERSHEY_COMPLEX_SMALL, 0.6, cvScalar(200,200,250), 1, CV_AA);
    putText(im, "Press Esc to exit or any other key to continue...", cvPoint(30,im.rows-15),FONT_HERSHEY_COMPLEX_SMALL, 0.6, cvScalar(200,200,250), 1, CV_AA);
    cv::drawMatches( im_r, keypoints_object, im, keypoints_scene,
                     good_matches, img_matches, cv::Scalar::all(-1), cv::Scalar::all(-1),
                     std::vector<char>(), cv::DrawMatchesFlags::NOT_DRAW_SINGLE_POINTS );
    cv::imshow(appName, img_matches);

    //Possibility for the user to exit the application or continue
    cout << "Press Esc to exit or any other key to continue..." << endl;
    int k = waitKey(0);
    if ( k == 27 ) break;
  }
  // end normal mode

  //ProgMode
  if (config.mode == -1)
  {
    //Load an image
    ostringstream oss;
    oss << "../img/contourFace" << count << ".pgm";
    fileName = oss.str();
    im1 = imread(fileName, CV_LOAD_IMAGE_GRAYSCALE); // open in grey scale
    Mat im_draw = imread(fileName);

    imshow(appName,im1);
    waitKey(2000);

    // find base contours
    cv::findContours(im1, contours, hierarchy, cv::RETR_LIST, cv::CHAIN_APPROX_NONE);

    // change contour to list of chains
    RefineContours(contours);
    vector<vector<Point>> chains = contours;

    // draw chains iteratively
    if (config.draw == -1){
      for(unsigned int i=0;i<chains.size();++i)
      {
        // draw all this contour
        for(unsigned int j=0;j<chains[i].size();++j)
          cv::circle(im1, chains[i][j], 1,Scalar(0,0,255));
        imshow(appName, im1);
        cv::waitKey(200);
        for(unsigned int j=0;j<chains[i].size();++j)
        {
          cv::circle(im1, chains[i][j], 1,Scalar(rand()%256,rand()%256,rand()%256));
          imshow(appName, im1);
          waitKey(1);
        }
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

    //Add comments
    putText(im1, "Genetic Algorithm is working, please wait...", cvPoint(30,im1.rows-45),FONT_HERSHEY_COMPLEX_SMALL, 0.33, cvScalar(200,200,250), 1, CV_AA);
    imshow(appName,im1);
    waitKey(1000);

    //GA - best solution
    Chain best(nodes);
    SolveMultiThread(best, 50, 2, false);

    //Random solution
    Chain random;
    random.Randomize();

    //Compare the different solution cost
    cout << "random: " << random.cost << " vs GA: " << best.cost << "( 1/" << int((random.cost+0.1)/best.cost) << ")" << endl;

    //Display the DrawChain - possibility to record
    if (config.vidRec == -1)
    {
      ostringstream vidoss;
      vidoss << "../video/drawFace" << count << ".avi";
      string vidName = vidoss.str();
      DrawChain(chains, best, im_draw, appName, 5);
      //DrawChain(chains, random, im1, "Random", 5);
    }

    //Generate the command file for the Dextar robot
    GenerateFile(chains, best, im1.rows, im1.cols, count, config.pixel);

    //Add some comments
    putText(im1, "Script generated at ../dextarFile/drawFace0.mp", cvPoint(30,im1.rows-30),FONT_HERSHEY_COMPLEX_SMALL, 0.33, cvScalar(200,200,250), 1, CV_AA);
    putText(im1, "Press Esc to exit or any other key to continue...", cvPoint(30,im1.rows-15),FONT_HERSHEY_COMPLEX_SMALL, 0.33, cvScalar(200,200,250), 1, CV_AA);

    imshow(appName,im1);

    //Possibility for the user to exit the application or continue
    cout << "Press Esc to exit or any other key to continue..." << endl;
    int k = waitKey(0);
    if ( k == 27 ) break;
  }
}
}
