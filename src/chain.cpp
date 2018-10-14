#include <chain.h>
#include <algorithm>
#include <iostream>
#include <ctime>
#include <string>

using namespace std;

// static variables
std::vector<std::vector<double> > Chain::nodes_ = std::vector<std::vector<double> >();
unsigned int Chain::n_ = 0;
std::vector<unsigned int> Chain::base_ordering_ = std::vector<unsigned int>();
std::vector<unsigned int> Chain::base_dir_ = std::vector<unsigned int>();

// constructor with static init
Chain::Chain(const std::vector<std::vector<double> > &_nodes)
{
    std::srand(std::time(0));
    nodes_ = _nodes;
    n_ = nodes_.size()/2;   // divided by 2 because two directions for each node
    base_ordering_.resize(n_);
    base_dir_.resize(n_);
    for(unsigned int i=0;i<n_;++i)
    {
        base_ordering_[i] = i;
        base_dir_[i] = 0;
    }
}

// randomize
void Chain::Randomize()
{
    ordering_ = base_ordering_;
    std::random_shuffle(ordering_.begin(),ordering_.end());
    dir_ = base_dir_;
    for(unsigned int i=0;i<n_;++i)
        dir_[i] = rand()%2;
    ComputeCost();
}

void Chain::ComputeCost()
{
    cost = 0;
    for(unsigned int i=1;i<n_;++i)
        cost += nodes_[2*ordering_[i-1]+dir_[i-1]][2*ordering_[i]+dir_[i]];
}

void Chain::CrossAndMutate(Chain &_father, Chain &_mother)
{
    // crossing
    unsigned int n = rand_int(2, n_-3);
    //  Print("    crossing between ", ordering_);
    //  Print("                 and ", _other.ordering_);
    ordering_.reserve(n_);
    dir_.reserve(n_);
    unsigned int i;
    for(i=0;i<n;++i)
    {
        ordering_.push_back(_father.ordering_[i]);
        dir_.push_back(_father.dir_[i]);
    }
    // index of last element in mother
    std::vector<unsigned int>::iterator it;
    unsigned int idx = std::distance(_mother.ordering_.begin(), std::find(_mother.ordering_.begin(),_mother.ordering_.end(),ordering_[n-1]));
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
        n = rand_int(0,n_-1);
        n2 = rand_int(0,n_-1);
        while(n2 == n)
            n2 = rand_int(0,n_-1);
        tmp = ordering_[n];
        ordering_[n] = ordering_[n2];
        ordering_[n2] = tmp;
    }
    if(rand()%2 == 0)  // or change a direction
    {
        n = rand_int(0,n_-1);
        if(dir_[n])
            dir_[n] = 0;
        else
            dir_[n] = 1;
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
