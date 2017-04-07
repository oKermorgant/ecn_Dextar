# -*- coding: utf-8 -*-
"""
Created on Tue Jun 21 13:37:18 2016

@author: Marcos Belchior
"""

import numpy as np
import chain as ch

class GeneticAlgorithm:
           
    def __init__(self,iter_max,keep_best,iter_out,full_pop,nodes):        
        #Protected                    
        self._best_cost = 0
        self._population = []
        self._costs = []
        self._costs_sorted = []
    
        self._iter_max = iter_max
        self._iter_out = iter_out
        self._keep_best = keep_best
        self._full_pop = full_pop
        self._half_pop = full_pop/2        
        
        #Public         
        self.solve(nodes)
        self.best = self._population[0]
    
    def find_index(self,lst,element):
        try:                    
            index = lst.index(element)
        except ValueError:
            index = -1
       # print 'find_chain: Could not find the element in the list.'
        return index    
    
    
    def solve(self, nodes):
        #Initialize the first population
        #ch.Chain.nodes = nodes
        self._population = [ch.Chain(nodes) for i in range(self._full_pop)]
        population = []
        
        #Compute and store all costs 
        for i in range(self._full_pop):
            self._population[i].randomize()
            self._costs.append(self._population[i].cost)
        
        #Initialize the best cost
        self._best_cost = self._population[0].cost
        #Check the heap nsmallest function on python
        iter_out = 0     
        for iter_max in range(self._iter_max):
            population = []
            #Extract best costs
            self.costs_sorted = self._costs
            np.sort(self.costs_sorted, axis=0)
            
            #Keep the best individuals
            for i in range(self._keep_best):
                index = self.find_index(self._costs,self.costs_sorted[i])
                #index = self.find(self._costs, self.costs_sorted[i])
                population.append(self._population[index])
                
            #Natural selection to fill half of the population
            for i in range(self._keep_best,self._half_pop):
                n1 = np.random.randint(self._full_pop)
                n2 = np.random.randint(self._full_pop)            
                while n2 == n1:
                    n2 = np.random.randint(self._full_pop)                
                if self._population[n1].cost<self._population[n2].cost:
                    population.append(self._population[n1])
                else:
                    population.append(self._population[n2])
            
            #Crossing and mutation to fill other half of the new pop
            for i in range(self._half_pop,self._full_pop):
                n1 = np.random.randint(self._full_pop)
                n2 = np.random.randint(self._full_pop) 
                while n2 == n1:
                    n2 = np.random.randint(self._full_pop)
                population.append(ch.Chain(nodes))
                population[-1].cross_and_mutate(self._population[n1],self._population[n2])
                
            #Update population and costs
            self._population = population
            for i in range(self._full_pop):
                self._costs[i] = self._population[i].cost
            
            #Check for best individual
            new_best = np.amin(self._costs)
            if new_best<self._best_cost:
                self._best_cost = new_best
                self.best = self._population[self.find_index(self._costs,self._best_cost)]
            else:
                iter_out = iter_out+1
                if iter_out == self._iter_out:
                    break
        