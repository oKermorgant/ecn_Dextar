#include <chain_sequence.h>
#include <algorithm>
#include <iostream>
#include <string>

using namespace std;

// static variables
std::vector<std::vector<double> > ChainSequence::nodes = std::vector<std::vector<double> >();
unsigned int ChainSequence::n_ = 0;
std::vector<unsigned int> ChainSequence::base_ordering_ = std::vector<unsigned int>();
std::vector<unsigned int> ChainSequence::base_dir_ = std::vector<unsigned int>();

double PointDist(const cv::Point &p1, const cv::Point &p2)
{
    return ((p1.x-p2.x)*(p1.x-p2.x)+(p1.y-p2.y)*(p1.y-p2.y));
}

// reset from new chain
void ChainSequence::reset(const std::vector<std::vector<cv::Point>> &chains)
{
  n_ = chains.size();
  nodes.resize(2*n_);
  for(auto &node: nodes)
    node.resize(2*chains.size());

  cv::Point p11, p12, p21, p22;
  for(unsigned int i=0;i<n_;++i)
  {
    for(unsigned int j=0;j<n_;++j)
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

  base_ordering_.resize(n_);
  base_dir_.resize(n_);
  for(unsigned int i=0;i<n_;++i)
  {
      base_ordering_[i] = i;
      base_dir_[i] = 0;
  }
}

// randomize
void ChainSequence::Randomize()
{
    ordering_ = base_ordering_;
    std::random_shuffle(ordering_.begin(),ordering_.end());
    dir_ = base_dir_;
    for(unsigned int i=0;i<n_;++i)
        dir_[i] = rand()%2;
    ComputeCost();
}

void ChainSequence::ComputeCost()
{
    cost = 0;
    for(unsigned int i=1;i<n_;++i)
        cost += nodes[2*ordering_[i-1]+dir_[i-1]][2*ordering_[i]+dir_[i]];
}

void ChainSequence::CrossAndMutate(ChainSequence &_father, ChainSequence &_mother)
{
    // crossing
    unsigned int n1 = rand_int(2, n_-3);
    //  Print("    crossing between ", ordering_);
    //  Print("                 and ", _other.ordering_);
    ordering_.reserve(n_);
    dir_.reserve(n_);
    unsigned int i;
    for(i=0;i<n1;++i)
    {
        ordering_.push_back(_father.ordering_[i]);
        dir_.push_back(_father.dir_[i]);
    }
    // index of last element in mother
    std::vector<unsigned int>::iterator it;
    unsigned int idx = std::distance(_mother.ordering_.begin(), std::find(_mother.ordering_.begin(),_mother.ordering_.end(),ordering_[n1-1]));
    // cout << "    crossing at " << n;
    //  cout << ", is at " << idx << " in other" << endl;
    // //Print("    starting from ", new_ordering);

    // append ending of other ordering if not already in it
    //if(idx !=_mother.ordering_.end())
    {
        //  cout << "    adding ending of other: ";
        for(it=_mother.ordering_.begin()+idx;it!=_mother.ordering_.end();++it)
        {
            if(std::find(ordering_.begin(),ordering_.end(),*it) == ordering_.end())
            {
                ordering_.push_back(*it);
                dir_.push_back(_mother.dir_[std::distance(_mother.ordering_.begin(), it)]);
                //     cout << *it << " ";
            }
        }
        //  cout << endl;
    }
    // append beginning of other ordering if not already
    // if(idx != _mother.ordering_.begin())
    {
        //  cout << "    adding beginning of other: ";
        for(it=_mother.ordering_.begin();it!=_mother.ordering_.begin()+idx;++it)
        {
            if(std::find(ordering_.begin(),ordering_.end(),*it) == ordering_.end())
            {
                ordering_.push_back(*it);
                dir_.push_back(_mother.dir_[std::distance(_mother.ordering_.begin(), it)]);
                //   cout << *it << " ";
            }
        }
        // cout << endl;
    }
    //  Print("                        final: ", new_ordering);

    // mutation:

    unsigned int n2, tmp ;
    if(rand()%2 == 0)  // switch 2 elements
    {
        n1 = rand_int(0,n_-1);
        n2 = rand_int(0,n_-1);
        while(n2 == n1)
            n2 = rand_int(0,n_-1);
        tmp = ordering_[n1];
        ordering_[n1] = ordering_[n2];
        ordering_[n2] = tmp;
    }
    if(rand()%2 == 0)  // or change a direction
    {
        n1 = rand_int(0,n_-1);
        if(dir_[n1])
            dir_[n1] = 0;
        else
            dir_[n1] = 1;
    }
    if(rand()%2 == 0) // or rotate
    {
        if(rand()%2 == 0)
            std::rotate(ordering_.begin(), ordering_.begin()+1, ordering_.end());
        else
            std::rotate(ordering_.begin(), ordering_.end()-1, ordering_.end());
    }

    ComputeCost();

}
