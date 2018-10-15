#include <iostream>
#include <fstream>
#include <string>
#include <sstream>

#include <opencv2/core/core.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/features2d/features2d.hpp>

#include <chain_sequence.h>
#include <ga.h>
#include <parser.h>
#include <script_generator.h>
#include <face_detection.h>
#include <find_chains.h>

using namespace std;
using namespace cv;

int main(void)
{
  // load configuration from the configFile
  Config config("config/configFile.txt");
  std::srand(std::time(0));
  ChainSequence best;

  cout << "using video source " << config.vid << endl;
  cout << "auto pic " << config.auto_pic << endl;
  cout << "draw chains " << config.draw << endl;
  cout << "video and record " << config.vidRec << endl;
  cout << "pixelated effect " << config.pixel << endl;
  cv::namedWindow("DrawBot", cv::WINDOW_AUTOSIZE | cv::WINDOW_KEEPRATIO | cv::WINDOW_GUI_EXPANDED);
  FaceDetector detector("DrawBot", config);
  ScriptGenerator generator(config);

  Mat img;
  Rect face_i;

  const std::string window = "Drawbot";

  vector<vector<Point> > contours;

  while(true){

    if(config.normal_mode )
    {
      detector.reset();
      while(detector.capture())
      {
        if(detector.detectFace())
        {
          detector.buildBlurredBG();
          contours = detector.findContours();
          detector.display("Number of contours: ", contours.size());
          cv::waitKey(10);
        }
      }

      generator.saveImage(detector.faceImage());

      // build nodes = distance from one chain ending to the next one
      best.reset(contours);

      detector.display("Genetic Algorithm is working, please wait...");

      //Genetic algorithm - find the best ordering solution
      SolveMultiThread(best, 50, 2, false);

      std::string filename = generator.GenerateFile(contours, best);

      detector.display("Script has been saved in " + filename + "\nPress Esc to exit or any other key to continue...");

      //Possibility for the user to exit the application or continue
      cout << "Press Esc to exit or any other key to continue..." << endl;
      int k = waitKey(0);
      if ( k == 27 ) break;
      // end normal mode
    }
    else
    {
      //ProgMode

      //Load an image
      ostringstream oss;
      oss << "../img/contourFace" << config.auto_pic << ".pgm";
      std::string fileName = oss.str();
      img = imread(fileName, CV_LOAD_IMAGE_GRAYSCALE); // open in grey scale
      Mat im_draw = imread(fileName);

      imshow(window,img);
      waitKey(2000);

      // find base contours
      vector<cv::Vec4i> hierarchy;
      cv::findContours(img, contours, hierarchy, cv::RETR_LIST, cv::CHAIN_APPROX_NONE);

      // change contour to list of chains
      RefineContours(contours);
      vector<vector<Point>> chains = contours;

      // draw chains iteratively
      if (config.draw == -1){
        for(unsigned int i=0;i<chains.size();++i)
        {
          // draw all this contour
          for(unsigned int j=0;j<chains[i].size();++j)
            cv::circle(img, chains[i][j], 1,Scalar(0,0,255));
          imshow(window, img);
          cv::waitKey(200);
          for(unsigned int j=0;j<chains[i].size();++j)
          {
            cv::circle(img, chains[i][j], 1,Scalar(rand()%256,rand()%256,rand()%256));
            imshow(window, img);
            waitKey(1);
          }
        }
      }

      // build nodes = distance from one chain ending to the next one
      best.reset(chains);

      //Add comments
      //putText(img, "Genetic Algorithm is working, please wait...", cvPoint(30,im1.rows-45),FONT_HERSHEY_COMPLEX_SMALL, 0.33, cvScalar(200,200,250), 1, CV_AA);
      imshow(window,img);
      waitKey(1000);

      SolveMultiThread(best, 50, 2, false);

      //Random solution
      ChainSequence random;
      random.Randomize();

      //Compare the different solution cost
      cout << "random: " << random.cost << " vs GA: " << best.cost << "( 1/" << int((random.cost+0.1)/best.cost) << ")" << endl;

      //Display the DrawChain - possibility to record
      /* if (config.vidRec == -1)
      {
        ostringstream vidoss;
        vidoss << "../video/drawFace" << count << ".avi";
        string vidName = vidoss.str();
        DrawChain(chains, best, im_draw, window, 5);
        //DrawChain(chains, random, im1, "Random", 5);
      }*/

      generator.GenerateFile(chains, best, config.auto_pic);

      //Add some comments
      putText(img, "Script generated at ../dextarFile/drawFace0.mp", cvPoint(30,img.rows-30),FONT_HERSHEY_COMPLEX_SMALL, 0.33, cvScalar(200,200,250), 1, CV_AA);
      putText(img, "Press Esc to exit or any other key to continue...", cvPoint(30,img.rows-15),FONT_HERSHEY_COMPLEX_SMALL, 0.33, cvScalar(200,200,250), 1, CV_AA);

      imshow(window,img);

      //Possibility for the user to exit the application or continue
      cout << "Press Esc to exit or any other key to continue..." << endl;
      int k = waitKey(0);
      if ( k == 27 ) break;
    }
  }
}
