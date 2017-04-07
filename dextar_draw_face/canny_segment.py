# -*- coding: utf-8 -*-
"""
Created on Wed Jun 22 13:14:56 2016

@author: Marcos Belchior
"""
import cv2
import numpy as np
import track_bar as tb

class CannySegment:
        
    def __init__(self,img):        
        #Protected
        self._window_name = 'canny segment'     
        #Public
        self.img = img
        #Actions        
        self._filter()
        self.contours = self._create_contours()
    
    def _filter(self):        
        self.img = cv2.cvtColor(self.img,cv2.COLOR_BGR2GRAY)
        print('canny_segment: Gray scale image conversion.')        
        #self._gamma_correction(2.0)
        self._gaussian_blur(3)
        self._canny_median(0.33)
        self._binary_inverse()
   
    def _gaussian_blur(self,size) :
        cv2.GaussianBlur(self.img,(size,size),0)
        print('canny_segment: Gaussian blur applied.')
    
    def _gamma_correction(self,factor):
        #Compute the gamma correction of the single channel pixel intensities        
        self.img = self.img/255.0
        self.img = cv2.pow(self.img, factor)
        self.img = np.uint8(self.img*255)
        print('canny_segment: Gamma correction applied.')
   
    def _canny_median(self,sigma):
        #Compute the median of the single channel pixel intensities
        v = np.median(self.img)
        lower = int(max(0, (1.0 - sigma) * v))
        upper = int(min(255, (1.0 + sigma) * v))
        #Apply automatic Canny edge detection using the computed median
        img = cv2.Canny(self.img,lower,upper)        
        cv2.namedWindow(self._window_name)        
        can_lower = tb.TrackBar('lower',self._window_name,0,255)
        can_upper = tb.TrackBar('upper',self._window_name,0,255)        
        while True:            
            img = cv2.Canny(self.img,int(can_lower.read_trackbar()),int(can_upper.read_trackbar()))
            cv2.imshow(self._window_name, img)            
            if cv2.waitKey(1) & 0xFF == ord('q'):
                cv2.destroyAllWindows()                
                print('face_detection: Face captured.')                   
                break
        self.img = img
        print('canny_segment: Canny edge applied.')
    
    def _binary_inverse(self):
        ret, threshold = cv2.threshold(self.img,127,255,cv2.THRESH_BINARY_INV)
        self.img = threshold
        print('canny_segment: Binary thresold inverse applied.')
    
    def _create_contours(self):
        contours, hierarchy = cv2.findContours(self.img,cv2.RETR_TREE,cv2.CHAIN_APPROX_SIMPLE)
        print('canny_segment: Contours created.')
        return contours


