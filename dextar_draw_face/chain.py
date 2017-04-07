# -*- coding: utf-8 -*-
"""
Created on Mon Jun 20 19:39:44 2016

@author: Marcos Belchior
"""
import numpy as np

class Chain:
        
    def __init__(self,nodes):        
        #Protected        
        self._nodes = nodes
        self._n = len(self._nodes)/2
        #Public        
        self.base_ordering = np.zeros(self._n, dtype=int)     
        self.base_dir = np.zeros(self._n, dtype=int)       
        for i in range(self._n):
            self.base_ordering[i] = i
            self.base_dir[i] = 0;        
        self.ordering = []
        self.dir = []
        self.cost = 0
        
    def compute_cost(self):
        self.cost = 0;
        for i in range(1,self._n):
            self.cost += self._nodes[2*self.ordering[i-1]+self.dir[i-1]][2*self.ordering[i]+self.dir[i]]
    
    def find_index(self,lst,element):
        try:                    
            index = lst.index(element)
        except ValueError:
            index = -1
       # print 'find_chain: Could not find the element in the list.'
        return index 
        
    def randomize(self):
        #print 'chain: Running the randomization of all nodes'        
        self.ordering = self.base_ordering
        np.random.shuffle(self.ordering)
        self.dir = [np.random.randint(0,2) for i in range(self._n)]        
        self.compute_cost()
        #print 'chain: Costs computed.' 
    
    def cross_and_mutate(self,father,mother):        
        #Crossing
        n = np.random.randint(2,self._n-3)               
        self.ordering = father.ordering
        self.dir = father.dir        
        # index of last element in mother
        index = self.find_index(mother.ordering.tolist(),self.ordering[n].tolist()) 
        #Append ending of other ordering if not already in it
        if index != mother.ordering[-1]:
            for i in range(index,len(mother.ordering)):
                ##if self.find(self.ordering,i)==self.ordering[-1]:
                idx = self.find_index(mother.ordering.tolist(),self.ordering[n].tolist())                                
                if idx == self.ordering[-1]:                
                    np.append(self.ordering,mother.ordering[i])                    
                    #self.ordering.apend(mother.ordering[i])
                    np.append(self.dir,mother.dir[len(mother.ordering)])
                    #self.dir.append(mother.dir[len(mother.ordering)])
        #Append beginning of other ordering if not already
        if index != mother.ordering[0]:
            for i in range(0,index):
                ##if self.find(self.ordering,i)==self.ordering[-1]:
                idx = self.find_index(mother.ordering.tolist(),self.ordering[n].tolist())                
                if idx == self.ordering[-1]:
                    np.append(self.ordering,mother.ordering[i])                    
                    #self.ordering.apend(mother.ordering[i])
                    np.append(self.dir,mother.dir[len(mother.ordering)])
                    #self.dir.append(mother.dir[len(mother.ordering)])   
        #Mutation    
        n2 = 0
        tmp = 0                
        #Switch 2 elements
        if np.random.randint(2) == 0: 
            n = np.random.randint(self._n)
            n2 = np.random.randint(n)
            while n2 == n:
                n2 = np.random.randint(self._n)
            tmp = self.ordering[n]
            self.ordering[n] = self.ordering[n2]
            self.ordering[n2] = tmp;            
        #Change a direction
        if np.random.randint(2) == 0:            
            n = np.random.randint(n)
            if self.dir[n]:
                self.dir[n] = 0
            else:
                self.dir[n] = 1                
        #Rotate
        if np.random.randint(2) == 0: 
            if np.random.randint(2) == 0:
                self.ordering = np.roll(self.ordering, 1)
            else:
                self.ordering = np.roll(self.ordering, -1)
        
        self.compute_cost()    
