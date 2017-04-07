# -*- coding: utf-8 -*-
"""
Created on Fri Jun 17 12:47:15 2016
Modified on Wed Jun 22 16:18:35 2016

@author: Taki Bouyoucef
@modified :Marcos Belchior
"""

import cv2
import track_bar as tb

class FaceDetection:
        
    def __init__(self):        
        #Protected
        self._window_name = 'face detection'
        #Public
        self.img_crop = []
        #Actions
        self._face_capture()       
        
    def _face_capture(self):
        #Cascade method for face detection
        faceCascade = cv2.CascadeClassifier('./cascade.xml')
        print('face_detection: Cascade classifier loaded.')  
        
        #Capturing the video from the webcam
        video_capture = cv2.VideoCapture(0)
        print('face_detection: Camera capture object.')  
        
        cv2.namedWindow(self._window_name)
        
        eli_width = tb.TrackBar('width',self._window_name,80,160)
        eli_length = tb.TrackBar('length',self._window_name,80,160)
        
        while True:
            #Capture frame-by-frame
            ret_val, frame = video_capture.read()    
            #Gray scale image conversion.
            gray = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)
            #Storing faces that was found
            faces = faceCascade.detectMultiScale(gray,scaleFactor=1.1,minNeighbors=5,minSize=(30, 30),flags=cv2.cv.CV_HAAR_SCALE_IMAGE)
                                   
            #Draw a rectangle around the faces   
            for (x, y, w, h) in faces:
                #Finding the rectangle around the faces 
                #cv2.rectangle(frame, (x, y), (x+w, y+h), (0, 255, 0), 2)
                pos_x = x+h/2 
                pos_y = y+w/2
                color = (0, 255, 0)
                thickness = 2
                #Display the resulting frame
                cv2.ellipse(frame, (pos_x,pos_y), (eli_width.read_trackbar(), eli_length.read_trackbar()), 0,0,360, color, thickness)
                #Finding the croping region                
                img_crop = frame[y:y+h+10, x:x+w+10]
                
                cv2.imshow(self._window_name, frame)
            if cv2.waitKey(1) & 0xFF == ord('q'):
                print('face_detection: Face captured.')                   
                break
        
        self.img_crop = img_crop
        #cv2.imwrite("face" + ".jpg", img_crop)
        # When everything is done, release the capture
        video_capture.release()
        cv2.destroyAllWindows()
        



