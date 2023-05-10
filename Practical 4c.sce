clear all 
clc 
x1=input('enter the X-coordinate of ellipse- ');
y1=input('enter the Y-coordinate of ellipse- ');
A=input('Enter the value of A ');
B=input('Enter the value of B ');
a=linspace(0,2*%pi,10);
x= x1+(A/2)*cos(a);
y= y1+(B/2)*sin(a);
points=[a;x;y];
disp(points)
plot(x,y);
