#ifndef INDIV_H
#define INDIV_H

#include <string>
#include <vector>
#include <iostream>

namespace ok_galg {


inline unsigned int rand_int(const unsigned int &_start, const unsigned int &_length)
{
    return rand()%_length+_start;
}

// this class is just a base class for actual individuals
class Indiv
{
public:
    Indiv() {}
    virtual void ComputeCost() = 0;
    virtual void Randomize() = 0;
    friend bool operator<(const Indiv &_a, const Indiv &_b) {return _a.cost < _b.cost;}

    double cost;
};


}

#endif // INDIV_H
