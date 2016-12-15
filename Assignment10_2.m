%Assignment 10 #2 CS20
%Karl Peterson
%12/7/2016
clc
clear all 
close all
X=linspace(0,4,300);
Y=linspace(0,2,300);
%^creating two vectors of values for x and y
[x,y]=meshgrid(X,Y);
%^using meshgrid for x and y values
for i=0:.01:2
    z = vibrate(x,y,i,10);
    mesh(x,y,z)
    axis([0 4 0 2 -0.45 0.45])
    pause(.01)
end
%^Using loop to animate the graph, also finding z using my vibrate function