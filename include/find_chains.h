#ifndef FIND_CHAINS_H
#define FIND_CHAINS_H

#include <opencv2/core.hpp>
#include <opencv2/imgproc.hpp>
#include <opencv2/video.hpp>
#include <opencv2/highgui.hpp>
#include <chain_sequence.h>

void DrawChain(const std::vector<std::vector<cv::Point> > &_contours, ChainSequence &_seq, cv::Mat _im, std::string window, int wait = 1, const std::string filename = "");


// this function takes a closed contour and finds the inner independent chains
// start from the given seed points
// append found chains to the given argument
unsigned int FindChains(std::vector<cv::Point> &_contour, std::vector<cv::Point> _seeds, std::vector<std::vector<cv::Point> > &_chains);


void RefineContours(std::vector<std::vector<cv::Point> > &_contours);


#endif // FIND_CHAINS_H
