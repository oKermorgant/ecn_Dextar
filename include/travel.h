#ifndef Travel_H
#define Travel_H

#include <ok_galg/indiv.h>
#include <vector>

class Travel : public ok_galg::Indiv
{
public:
    std::vector<unsigned int> ordering_;
    static std::vector<unsigned int> base_ordering_;
    Travel() {}
    void Copy(const Travel &_other) {ordering_ = _other.ordering_;cost = _other.cost;}
    void Randomize();
    Travel(std::vector<std::vector<double> > _nodes, bool _closed = false);    
    void ComputeCost();
    void CrossAndMutate(Travel &_father, Travel &_mother);
    void Print();

protected:
    static std::vector<std::vector<double> > nodes_;    
    static unsigned int n_;
    static bool closed_;
};

#endif // Travel_H
