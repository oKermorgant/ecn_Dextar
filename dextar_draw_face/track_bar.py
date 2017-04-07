# -*- coding: utf-8 -*-
"""
Created on Wed Jun 22 17:47:33 2016

@author: Marcos Belchior
"""

import cv2

class TrackBar:
        
    def __init__(self,trackbar_name,window_name,trackbar_min,trackbar_max):        
        #Protected
        self._window_name = window_name
        self._trackbar_name = trackbar_name
        self._trackbar_min = trackbar_min
        self._trackbar_max = trackbar_max
        #Public
        self.value = 0
        #Actions
        self._trackbar_create()
    
    def _nothing(x):
        # this function is needed for the createTrackbar step downstream
        pass
    
    def _trackbar_create(self):
        # add lower and upper threshold slidebars to "canny"
        cv2.createTrackbar(self._trackbar_name, self._window_name, self._trackbar_min, self._trackbar_max, self._nothing)
    
    def read_trackbar(self):
        self.value = cv2.getTrackbarPos(self._trackbar_name, self._window_name)
        return self.value
