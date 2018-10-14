#ifndef INDIV_H
#define INDIV_H

#include <string>
#include <vector>
#include <iostream>

namespace ok_galg {




// this class is just a base class for actual individuals
class Indiv
{
public:
    Indiv() {}
    virtual void ComputeCost() = 0;
    virtual void Randomize() = 0;


};


}

#endif // INDIV_H
