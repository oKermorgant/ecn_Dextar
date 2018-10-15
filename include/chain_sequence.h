#ifndef CHAINSEQUENCE_H
#define CHAINSEQUENCE_H

#include <vector>
#include <cstdlib>
#include <opencv2/imgproc/imgproc.hpp>

double PointDist(const cv::Point &p1, const cv::Point &p2);

inline unsigned int rand_int(const unsigned int &_start, const unsigned int &_length)
{
  return rand()%_length+_start;
}

class ChainSequence
{
public:
  std::vector<unsigned int> ordering_, dir_;
  double cost;
  static std::vector<unsigned int> base_ordering_, base_dir_;
  ChainSequence() {}
  void Randomize();
  void ComputeCost();
  void CrossAndMutate(ChainSequence &_father, ChainSequence &_mother);
  friend bool operator<(const ChainSequence &_a, const ChainSequence &_b) {return _a.cost < _b.cost;}

  static void reset(const std::vector<std::vector<cv::Point>> &sequence);


protected:

  static std::vector<std::vector<double> > nodes;
  static unsigned int n_;
};

#endif // CHAIN_H
