#ifndef FACEDETECTION_H
#define FACEDETECTION_H

#include <opencv2/highgui/highgui.hpp>
#include <parser.h>
#include <opencv2/objdetect/objdetect.hpp> //for face detection

typedef std::vector<cv::Point> Contour;

struct Tracker : public cv::Rect2i
{
  void track(const std::vector<cv::Rect2i> &faces, int rows, int cols);
  void filter(std::vector<Contour> & contours );
  bool outOfEllipse(const cv::Point &p);
  int height_correction, width_correction;
  double height_inv, width_inv;
  double a = 0.1;
};


class FaceDetector
{
public:
  FaceDetector(std::string window_name, const Config & config);
  void reset() {clic_evt = cv::EVENT_FLAG_ALTKEY;}
  bool capture();
  bool detectFace();
  void buildBlurredBG();
  std::vector<Contour> findContours();
  void display(const std::string &s = "", int v = 0);
  cv::Mat faceImage()
  {
    return im_face;
  }

//private:

  void filter(std::vector<Contour> & contours );
  // GUI stuff
  std::string window;
  int blur_kernel;
  int canny_low, canny_high;
  cv::VideoCapture cap;
  static int clic_evt;

  cv::CascadeClassifier face_detector, eye_detector;
  Tracker face;

  // images
  int rows, cols;
  cv::Mat im_raw, im_face, im_grey, im_both, mask;
  int display_col = 240;
};

#endif // FACEDETECTION_H
