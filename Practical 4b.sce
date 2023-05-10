clear all 
clc 
x1=input('enter the X-coordinate of circle- ')
y1=input('enter the Y-coordinate of circle- ')
r=input('Enter the radius ');
a=linspace(0,2*%pi,100);
x= x1+r*cos(a);
y= y1+r*sin(a);
points=[a;x;y];
disp(points)
plot(x,y);
