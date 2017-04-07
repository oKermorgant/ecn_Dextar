# -*- coding: utf-8 -*-
"""
Created on Wed Jun 22 13:16:26 2016

@author: Marcos Belchior
"""

class mpFileGenerator:
    
    def __init__(self, sequence_list):        
            #Protected        
            self._lin_vel = 150.00
            self._lin_acc = 150.00
            self._ang_vel = 150.00
            self._ang_acc = 150.00
            #Public
            self.sequence_list = sequence_list
            #Action
            self._mp_generate(sequence_list)
        
    
    def _mp_generate(self,sequence_list):
        pen_up = 1
        f = open("draw_face.mp","w")
    
        f.write("! Start of program:\n")
        f.write("START;\n")
        f.write("! Defining the speed, acceleration\n")
        f.write("! Defining the work space\n")
        f.write("! and active-joints space:\n")
        
        f.write("CFGLIN V"+str(round(self._lin_vel,2))+" A"+str(round(self._lin_acc,2))+";\n")
        f.write("CFGANG V"+str(round(self._ang_vel,2))+" A"+str(round(self._ang_acc,2))+";\n\n")
        
        f.write("! Drawing coordinates system:\n")
        f.write("WCS X20.0 Y60.0 Z0.05 W0.0;\n\n")
        
        f.write("! Tool length definition:\n")
        f.write("TCS Z-42.5;  ! For pen\n")
        
        f.write("! Go to initial position in the working mode of the home configuration (++)\n")
        f.write("MoveC X25.00 Y-25.00 S100 M1; !actuator is already up at the beginning\n")
        f.write("MoveZ Z2.0;\n")
        
        
        for i in range(len(self.sequence_list)):
            for j in range(len(self.sequence_list[i])):
                if len(self.sequence_list[i][j]):
                    f.write("MoveC X"+str(round((float(self.sequence_list[i][j][0])/4.5),2))+" Y"+str(round((float(self.sequence_list[i][j][1])/4.5),2)) +";\n")
                    if pen_up == 1:
                        f.write("Output ON;\n")
                        f.write("MoveZ Z2.00; ! Move pen down\n")
                        pen_up = 0
            pen_up = 1 
            f.write("Output OFF;\n")
            f.write("MoveZ Z0.00; ! Move pen up\n\n")        
        
        f.write("! Move DexTAR to its home configuration\n")
        f.write("MoveZ L0.0;\n")
        f.write("MoveJ A0.0 B0.0;\n")
        f.write("END;\n")
           
        f.close()