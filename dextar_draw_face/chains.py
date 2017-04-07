# -*- coding: utf-8 -*-
"""
Created on Thu Jun 23 14:03:07 2016
Modified on Thu Jun 23 16:26:29 2016

@author: Taki Bouyoucef
@modified : Marcos Belchior
"""

import numpy as np
import chain as ch
import genetic_algorithm as ga
import find_chains as fc

class Chains:
        
    def __init__(self,contours):
         self.contours = contours
         self.make_chains()
         
    def point_dist(self,point_1,point_2):  
        return (point_1[0]-point_2[0])*(point_1[0]-point_2[0]) + (point_1[1]-point_2[1])*(point_1[1]-point_2[1])
    
    
    def make_chains(self):
        cont_size = len(self.contours)
        print 'chains: Size of the first contour found: '+str(cont_size)        
        
        find_chains = fc.FindChains(self.contours)
        print 'chains: Chains founded.'
        
        self.contours = find_chains.new_contours
        cont_size = len(find_chains.new_contours)        
        print 'chains: Size of the new refined contour: '+str(cont_size)

               
        #print 'chains: Size of the new 1 contour: '+str( len(find_chains.new_contours[0])  )
        #print 'chains: Size of the new 2 contour: '+str( find_chains.new_contours[0][0] ) 
        
        nodes = np.zeros((2*cont_size,2*cont_size))                    
        for j in range(cont_size):
            for k in range(cont_size):
                if j != k :
                    p11 = self.contours[j][0]
                    p12 = self.contours[j][-1]
                    
                    p21 = self.contours[k][0]
                    p22 = self.contours[k][-1] 
                    #print self.contours[j][0]
                    if len(p11)==2 and len(p12)==2 and len(p11)==2 and len(p22)==2: 
                        nodes[2*j][2*k] = self.point_dist(p12, p21)
                        nodes[2*j+1][2*k] = self.point_dist(p11, p21)
                        nodes[2*j][2*k+1] = self.point_dist(p12, p22)
                        nodes[2*j+1][2*k+1] = self.point_dist(p11, p22)
                    else:
                        pass                        
                        
        nodes = nodes.tolist()
        print 'chains: Nodes for genetic algorithm calculated.'
        
        #iter_max,keep_best,iter_out,full_pop,nodes
        best = ga.GeneticAlgorithm(30,5,30,10,nodes)
        print 'chains: Best: '+str(best._best_cost)        
        
        chain_ = ch.Chain(nodes)
        chain_.randomize()
        print 'chains: Random: '+str(chain_.cost)

        print 'chains: The genetic algorithm was more efficient then a random: '+str((chain_.cost+0.1)/best._best_cost)
        
        
            
        
    