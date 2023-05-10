clc 
x1=input('enter the X-coordinate of point- P1 '); 
y1=input('enter the Y- coordinate of point- P1 '); 
x2=input('enter the X-coordinate of point- P2 '); 
y2=input('enter the Y- coordinate of point- P2 '); 
t=linspace(0,1,11) 
x=x1+(x2-x1)*t; 
y=y1+(y2-y1)*t; 
points=[t;x;y]; 
disp(points) 
plot(x,y)
