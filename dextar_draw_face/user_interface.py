# -*- coding: utf-8 -*-
"""
Created on Wed Jun 22 17:18:09 2016

@author: Marcos Belchior
"""
import face_detection as fd
import canny_segment as cs
import chains as chs
import mp_file_generator as mp



#Detect the face and get the crop image
face = fd.FaceDetection()
#Apply the filter to get the contour
canny = cs.CannySegment(face.img_crop)
#Get the list of points that belong to the contour
canny_contours = canny.contours

#parsing the list to np array
#nodes = np.array(canny_list)

contour_chains = chs.Chains(canny_contours)
contour_chains.contours


mp_gen = mp.mpFileGenerator(contour_chains.contours)
