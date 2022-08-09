# Robotic Arm 3D simulation using MATLAB
In order to enhance the study of the kinematics of any robot arm, parameter design is directed according to certain necessities for the robot, and its forward and inverse kinematics are discussed. The DR convention Method is used to form the kinematical equation of the resultant structure. In addition, the Robotics equations are modeled in MATLAB to create a 3D visual simulation of the robot arm. The simulation has detected the movement of each joint of the robot arm, and tested the parameters.

This robotic arm was 6-D0F type.
# Implementation
●In the Kinematic analysis process, we determine the DOF of the robot, then we choose the reference frames and calculate its corresponding homogeneous matrix, all using D-H convention which is frequently used for choosing reference frames in robotics applications.

●Using the D-H table, calculating the forward kinematic equations would be easier, faster and more accurate using Robotic Toolbox, which can later be used in simulating the actual robot arm movement and its interaction with the surrounding environment.

●In the simulation part, three different algorithms were used to move the robotic arm, which are the Cartesian motion algorithm, differential motion algorithm and joint motion algorithm. The results of these algorithms, along with the 3D visual simulation are all conducted in MATLAB. 

# Process
●	So, Basically, we will be taking separate MATLAB files (.m) for each distinct part like for e.g. cylinders, lines, floor, and to sum up all; this will be making the structure of the robot.

●	Now, the rotation joint will take the input angle, and the prismatic joint will take the joint extension as input.

●	The given inputs and the DH-parameters  respectively will be used for the compilation of the final model of the robot. 

●	All the above criterion will only be satisfied as and according to given inputs and the output will be the resulting robot model.  

