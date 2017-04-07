# -*- coding: utf-8 -*-
"""
Created on Thu Jun 23 13:56:25 2016

@author: Marcos Belchior
"""
class FindChains:
        
    def __init__(self,contours):        
        #Protected
        self.min_length = 5;
        self.dot_size = 5;
        self.max_dist = 10;
        self.length = [];
        #Public
        self.new_contours = [[]]
        self.contours = contours
        self._contour_to_list()
        self.refine(self.contours)

    def _contour_to_list(self):
        contours_set = []
        for i in range(len(self.contours)):            
            contour_line = []
            for j in range(len(self.contours[i])):
                contour_line.append(self.contours[i][j][0].tolist())
            contours_set.append(contour_line)
        self.contours = contours_set
        print 'find_chain: List from the list contours arrays created.'
                
    def point_dist(self,point_1,point_2):
        return point_1[0]-point_2[0]*point_1[0]-point_2[0] + point_1[1]-point_2[1]*point_1[1]-point_2[1]
    
    def find_index(self,lst,element):
        try:                    
            index = lst.index(element)
        except ValueError:
            index = -1
       # print 'find_chain: Could not find the element in the list.'
        return index
    
    def refine(self,_contours):
        print 'find_chain: Refining the contours...'
        self.new_contours = [[]]
        cog = [0,0]
        p1 = 0
        for i in range(len(_contours)):
            x = 0
            y = 0
            d = 0
            for j in range(len(_contours[i])):
                x += _contours[i][j][0]
                y += _contours[i][j][1]                            
            cog[0] = round(x/len(_contours[i]))
            cog[1] = round(y/len(_contours[i]))            
            #Get farest from <<cog>>            
            d = self.point_dist(cog,_contours[i][0])
            p1 = _contours[i][0]            
            for j in range(1,len(_contours[i])):
                if self.point_dist(cog,_contours[i][j]) > d:
                    d = self.point_dist(cog,_contours[i][j])
                    p1 = _contours[i][j]                    
            
            #Find chains starting from p1 as only seed
            seeds = []
            seeds.append(p1)
            self._find_chains(_contours[i],seeds,self.new_contours)
            #print 'find_chain: Checking if passing as reference works, contours: '+str(self.new_contours)
            
        _contours.append(self.new_contours)
        self.new_contours = _contours
        #print 'find_chain: Founded the contours: '+str(_contours)        
        #self.contours.append(_contours)
        print 'find_chain: Rifined list of contours founded.'
            
    def _find_chains(self,_contour, seeds, chains):
        #print 'find_chain: Finding the chains...'        
        #Defining point not necessary
        #Startin the loop
        length = len(chains);
        for i in range(len(seeds)):
            point = seeds[i]
            chain = []            
            chain.append(point)
            #deleting the <<point>> if it already belongs to another contour
            index = self.find_index(_contour,point)
            if index == -1:
                del _contour[-1]
            d = 0
            new_branch = []
            #Evaluation of where the <<point>> belongs 
            #print 'find_chain: Lenth of the input countour: '+str(len(_contour))
            while len(_contour):                
                #Find the nearest point from <<point>>
                d = 400
                for j in range(len(_contour)):            
                    #print 'find_chain: the lenth of countour evaluated: '+str(len(contour))                    
                    #Do not mess with original seeds                    
                    index = self.find_index(seeds,point)                    
                    if index == -1:
                        print 'find_chain: The countour evaluated in the distance: '+str(_contour[j])
                        if self._point_dist(point,_contour[j]) < d:
                            #Clearing the elements from nb                            
                            del new_branch[:]
                            new_branch.append(_contour[j])
                            d = self._point_dist(point,_contour[j])
                        elif self._point_dist(point,_contour[j]) == d:
                            new_branch.append(_contour[j])                    
                        print 'find_chain: New branch of the countour: '+str(new_branch)
                #Not neighboors but same point
                if d == 0:                    
                    for j in range(new_branch):
                        index = self.find_index(_contour,new_branch[j])
                        if index != -1:
                            del _contour[index]
                    print 'find_chain: The neighbour is the same point, the new branch becomes: '+str(len(new_branch))
                else:
                    #A few, near neighboors, that is the chain continuing
                    if d < self.max_dist and len(new_branch) < self.dot_size:
                        for j in range(new_branch):
                            chain.append(new_branch[j])
                        point = new_branch[0]                        
                        index = self.find_index(_contour,new_branch[0])
                        del _contour[index]
                        print 'find_chain: The chain receives the new branch and becomes: '+str(len(chain)) 
                    #Neighboors are either too far or too many, thus create a new chains
                    else:

#                        #Only one new chain from several neighboors, it was actually the same chain
                        new_chains = self._find_chains(_contour, new_branch, chains)
                        if new_chains == 1:
                            #print 'The length of _chains: '+str(len(chains))
                            for j in range(len(chains[-1])):
                                chain.append(chains[-1][j])
                                self.new_contours.append(chains[-1][j])
                            del chains[len(chains)-1]
                        break
                if len(chain) > self.min_length:
                    chains.append(chain)             
                    self.new_contours.append(chain)
                    print 'find_chain: Chain was appended: '+str(chain)
                    
            #print 'find_chain: Chain founded.'
            return len(chains)-length