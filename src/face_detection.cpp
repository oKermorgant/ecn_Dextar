#include <face_detection.h>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/features2d/features2d.hpp>

using std::vector;

void OnMouseSelect(int evt, int x, int y, int flags, void* click) {
  if(evt == cv::EVENT_LBUTTONDBLCLK)
  {
    int *c = static_cast<int*>(click);
    *c = evt;
  }
}

void on_trackbar( int, void* ) {}

void Tracker::track(const std::vector<cv::Rect2i> &faces, int rows, int cols)
{
  const auto face = std::max_element(faces.begin(), faces.end(),
                                     [](const cv::Rect2i &f1, const cv::Rect2i &f2)
           {return f1.area() < f2.area();});
  // scale rectangle from sliders
  int new_height = (std::max(1, height_correction)*face->height)/100;
  int new_width = (std::max(1, width_correction)*face->width)/100;
  const int new_x = std::max(0, face->x + (face->width - new_width)/2);
  const int new_y = std::max(0, face->y + (face->height - new_height)/2);
  new_height = std::min(new_height, rows - new_y - 1);
  new_width = std::min(new_width, cols - new_x - 1);

  if(height*width)
  {
    x = a*x + (1-a)*new_x;
    y = a*y + (1-a)*new_y;
    height = a*height + (1-a)*new_height;
    width = a*width + (1-a)*new_width;
  }
  else
  {
    x = new_x;
    y = new_y;
    height = new_height;
    width = new_width;
  }
  height_inv = 1./height;
  width_inv = 1./width;
}

bool Tracker::outOfEllipse(const cv::Point &p)
{
  const double dx = (p.x - width/2)*width_inv;
  const double dy = (p.y - height/2)*height_inv;
  return dx*dx + dy*dy >= .25;
}

int FaceDetector::clic_evt = cv::EVENT_FLAG_ALTKEY;

FaceDetector::FaceDetector(std::string window_name, const Config & config): window(window_name)
{
  cv::setMouseCallback(window, OnMouseSelect, static_cast<void*>(&clic_evt));

  if(config.normal_mode)
  {
    cap.open(config.vid);
    rows = static_cast<int>(cap.get(cv::CAP_PROP_FRAME_HEIGHT));
    cols = static_cast<int>(cap.get(cv::CAP_PROP_FRAME_WIDTH));
    face_detector.load("../config/haarcascade_frontalface_default.xml");
    mask = cv::Mat(rows, cols, CV_8UC1);
    im_both = cv::Mat(rows, display_col + cols, CV_8UC3);
  }

  face.height_correction = config.ellipse_height;
  face.width_correction = config.ellipse_width;
  blur_kernel = config.k;
  canny_low = config.lower;
  canny_high = config.upper;
  cv::createTrackbar( "Height", window, &face.height_correction, 200, on_trackbar );
  cv::createTrackbar( "Width", window, &face.width_correction, 200, on_trackbar );
  cv::createTrackbar( "Blur", window, &blur_kernel, 10, on_trackbar );
  cv::createTrackbar( "Lower threshold", window, &canny_low, 255, on_trackbar );
  cv::createTrackbar( "Upper threshold", window, &canny_high, 255, on_trackbar );
}

bool FaceDetector::capture()
{
  if(cap.isOpened() && clic_evt == cv::EVENT_FLAG_ALTKEY)
  {
    cap.read(im_raw);
    return true;
  }
  return false;
}

bool FaceDetector::detectFace()
{
  if(im_raw.rows * im_raw.cols)
  {
    cv::cvtColor(im_raw, im_grey, cv::COLOR_BGR2GRAY);

    vector< cv::Rect2i > faces;
    face_detector.detectMultiScale(im_grey, faces);
    if(faces.size() == 0)
      return false;

    face.track(faces, rows, cols);
    im_face = cv::Mat(im_grey, face);
    return true;
  }
  else
    return false;
}

void FaceDetector::buildBlurredBG()
{
  // build masks
  cv::Mat masked_face;
  mask = 0;

  const int x = face.x + face.width/2;
  const int y = face.y + face.height/2;

  cv::ellipse(mask, cv::Point(x, y),
              cv::Size(face.width/2, face.height/2), 0, 0, 360, 255, -1);
  im_raw.copyTo(masked_face, mask);
  cv::GaussianBlur(im_raw, im_raw, cv::Size(15,15), 4, 4);
  masked_face.copyTo(im_raw, mask);

  cv::ellipse(im_raw, cv::Point(x, y),
              cv::Size(face.width/2, face.height/2), 0, 0, 360, cv::Scalar(0,0,0), 2);
  cv::imshow("Face", im_face);
}

void FaceDetector::filter(std::vector<Contour> & contours )
{
  for(auto & contour: contours)
  {
    contour.erase(std::remove_if(contour.begin(), contour.end(),
                   [this](const cv::Point &p){
      if(this->face.outOfEllipse(p))
      {
        this->im_face.at<uchar>(p) = 0;
        return true;
      }
      return false;}),
    contour.end());
  }
  contours.erase(std::remove_if(contours.begin(), contours.end(),
                                [](const Contour &c){return c.size() == 0;}),
                 contours.end());
}

std::vector<Contour> FaceDetector::findContours()
{
  cv::GaussianBlur(im_face, im_face, cv::Size(2*blur_kernel+1,2*blur_kernel+1),0,0);
  cv::Canny(im_face, im_face, canny_low, canny_high);

  // find and translate the contours
  vector<Contour > contours;
  vector<cv::Vec4i> hierarchy;
  cv::findContours(im_face, contours, hierarchy, cv::RETR_LIST, cv::CHAIN_APPROX_NONE);
  filter(contours);

  // offset for display
  auto contours_offset = contours;
  for(auto &contour: contours_offset)
  {
    for(auto &p: contour)
    {
      p.x += face.x;
      p.y += face.y;
    }
  }
  //Draw the contours in the original image
  cv::drawContours(im_raw, contours_offset, -1, cv::Scalar(0,255,0), 1);
  return contours;
}

void FaceDetector::display(const std::string &s, int v)
{
  cv::Mat built;

  // rescale face image
  float scale;
  float s1 = (float)im_face.cols/display_col;
  float s2 = float(im_face.rows)/float(im_raw.rows);
  if (s1 > s2) scale = s1;
  else scale = s2;

  cv::Mat im_resize(roundf((float)im_face.rows/scale), roundf((float)im_face.cols/scale),CV_8UC3);
  cv::resize(im_face,im_resize,im_resize.size(),0,0,cv::INTER_NEAREST);
  //im_resize.resize(im_raw.rows);


  std::vector<cv::KeyPoint> kp;
  std::vector<cv::DMatch> matches;

  cv::drawMatches( im_resize, kp, im_raw, kp,
                   matches, im_both, cv::Scalar::all(-1), cv::Scalar::all(-1),
                   std::vector<char>(), cv::DrawMatchesFlags::NOT_DRAW_SINGLE_POINTS );

 // cv::hconcat(std::vector<cv::Mat>{im_resize, im_raw}, 2, im_both);

  //Display the numbers of contours on the contours image
  if(s != "")
  {
    std::ostringstream ossText;
    ossText << s;
    if(v != 0)
      ossText << v;
    cv::putText(im_both, ossText.str(), cv::Point(display_col + 30,30),cv::FONT_HERSHEY_COMPLEX_SMALL, 0.6, cv::Scalar(200,200,250), 1, CV_AA);
  }

  //Display the final result in the main window
  cv::imshow(window, im_both);
  cv::waitKey(1);
}
