#ifndef GALG_H
#define GALG_H

#include <vector>
#include <thread>
#include <functional>
#include <chrono>
#include <algorithm>
#include <chain_sequence.h>
#include <iostream>

// perform a single run with a random population
ChainSequence SolveSingleRun(ChainSequence &best, const unsigned int &_t=0, const unsigned int &_run=0)
{
    // read config parameters
    const unsigned int keep_best = 5;
    const unsigned int iter_max = 100;
    const unsigned int iter_out = 30;
    const unsigned int full_population = 500;

    const unsigned int half_population = full_population/2;

    // init first population from random individuals
    std::vector<ChainSequence> population(full_population + half_population);
    for(int i = 0; i < full_population; ++i)
      population[i].Randomize();

    std::nth_element(population.begin(), population.begin()+keep_best, population.begin()+full_population);
    best = *(std::min_element(population.begin(), population.begin()+keep_best));

    // loop until exit conditions
    unsigned int i, iter=0,iter_follow=0;
    unsigned int n1,n2;
    std::string spaces = "";
    for(i=0;i<_t;++i)
        spaces += "              ";
    while(iter++ < iter_max && iter_follow< iter_out)   // max iteration and max iteration where the best is always the same
    {
        if(_t != 0)
            std::cout << spaces << _t << ":" << _run << ":" << iter << std::endl;

        // we keep the best individuals anyway
        for(i=0;i<keep_best;++i)
            population[full_population+i] = population[i];

        // selection, 1 vs 1 tournament to fill half of the population
        for(i=keep_best;i<half_population;++i)
        {
            n1 = rand_int(0,full_population);
            n2 = rand_int(0,full_population);
            while(n1 == n2)
                n2 = rand_int(0,full_population);
            if(population[n1] < population[n2])
                population[full_population+i] = population[n1];
            else
                population[full_population+i] = population[n2];
        }

        // put new elements at front of new population
        for(i=0;i<half_population;++i)
            population[i] = population[full_population+i];

        // crossing and mutation to fill other half of the new pop
        for(i=half_population;i<full_population;++i)
        {
            n1 = rand_int(0,half_population);
            n2 = rand_int(0,half_population);
            while(n1 == n2)
                n2 = rand_int(0,half_population);
            //   std::cout << "  new " << i << " is crossing between " << n1 << " and " << n2 << std::endl;
            // cross between parents + compute cost
            population[i].CrossAndMutate(population[n1],population[n2]);
        }

        // update costs
        std::nth_element(population.begin(), population.begin()+keep_best, population.begin()+full_population);

        // check for best individual
        if(*std::min_element(population.begin(), population.end()) < best)
        {
            // found new best individual
            // reset counter
            iter_follow = 0;
            // update best
            best = *std::min_element(population.begin(), population.end());
        }
        else
            iter_follow += 1;   // always the same winner
    }
    return best;
}

// perform a given number of runs and returns the best one in _best
// not to be used directly
void SolveMultiRun(ChainSequence &best, const unsigned int &_thread_n = 0, const unsigned int &_runs = 0, bool display = false)
{
    ChainSequence indiv;
    bool first = true;
    std::this_thread::sleep_for(std::chrono::duration<double, std::milli>(100*_thread_n));

    unsigned int base_run = (_thread_n-1) * _runs;
    for(unsigned int run=0;run<_runs;++run)
    {

        std::cout << "Run #" << base_run + run << " in thread #" << _thread_n << std::endl;
        if(display)
            SolveSingleRun(indiv, _thread_n, base_run + run);
        else
            SolveSingleRun(indiv);
        if(first || indiv.cost < best.cost)
        {
            best = indiv;
            first = false;
        }
    }
}



// performs a given number of runs across a given number fo threads, returns the overall best result
ChainSequence SolveMultiThread(ChainSequence &best, const unsigned int &_runs = 10, unsigned int _n_threads = 1, bool display = false)
{
    if(_n_threads > _runs)
        _n_threads = _runs;
    std::vector<std::thread> t;
    std::vector<ChainSequence> bests(_n_threads);

    unsigned int div = _runs / _n_threads;
    std::cout << "runs per thread: " << div << std::endl;

    for(unsigned int i=0;i<_n_threads;++i)
            t.push_back(std::thread(SolveMultiRun, std::ref(bests[i]), i+1, div, display));

    for(unsigned int i=0;i<_n_threads;++i)
        t[i].join();

    // compare results and return best individual
    best = bests[0];
    for(auto &other: bests)
        if(other.cost < best.cost)
            best = other;
    return best;
}

#endif // GALG_H
