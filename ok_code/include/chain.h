#ifndef CHAIN_H
#define CHAIN_H

#include <indiv.h>
#include <vector>

class Chain : public ok_galg::Indiv
{
public:
    std::vector<unsigned int> ordering_, dir_;
    static std::vector<unsigned int> base_ordering_, base_dir_;
    Chain() {Randomize();}
    void Copy(const Chain &_other) {ordering_ = _other.ordering_;cost = _other.cost;dir_ = _other.dir_;}
    void Randomize();
    Chain(std::vector<std::vector<double> > _nodes);
    void ComputeCost();
    void CrossAndMutate(Chain &_father, Chain &_mother);

protected:

    static std::vector<std::vector<double> > nodes_;
    static unsigned int n_;
};

#endif // CHAIN_H
