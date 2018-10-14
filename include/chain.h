#ifndef CHAIN_H
#define CHAIN_H

#include <vector>
#include <cstdlib>

inline unsigned int rand_int(const unsigned int &_start, const unsigned int &_length)
{
  return rand()%_length+_start;
}

class Chain
{
public:
  std::vector<unsigned int> ordering_, dir_;
  double cost;
  static std::vector<unsigned int> base_ordering_, base_dir_;
  Chain() {Randomize();}
  void Randomize();
  Chain(const std::vector<std::vector<double> >& _nodes);
  void ComputeCost();
  void CrossAndMutate(Chain &_father, Chain &_mother);
  friend bool operator<(const Chain &_a, const Chain &_b) {return _a.cost < _b.cost;}


protected:

  static std::vector<std::vector<double> > nodes_;
  static unsigned int n_;
};

#endif // CHAIN_H
