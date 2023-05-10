// Program for 3-D transformation
clc
clear all
a=input('Enter the coordinate of 1st point:  ')
b=input('Enter the coordinate of 2nd point:  ')
c=input('Enter the coordinate of 3rd point:  ')
d=input('Enter the coordinate of 4th point:  ')
e=input('Enter the coordinate of 5th point:  ')
P=[a;b;c;d;e]
disp(P);

O=input('Enter 1 for Translation,2 for Rotation,3 for Reflection,4 for Scaling: ')

//Translation
if O==1 then
    tx=input('Enter the value of tx:  ')
    ty=input('Enter the value of ty:  ')
    tz=input('Enter the value of tz:  ')
    T=[1 0 0 0;0 1 0 0;0 0 1 0;tx ty tz 1]
end

//Rotation
if O==2
    R=input('Enter 5 for rotation about x axis,6 for rotation about y axis,7 for rotation about z axis: ')
    theta=input('Enter the value of rotation angle: ')
    if R==5 
        T=[1 0 0 0;0 cosd(theta) sind(theta) 0;0 -sind(theta) cosd(theta) 0;0 0 0 1]
    elseif R==6
        T=[cosd(theta) 0 -sind(theta) 0;0 1 0 0;sind(theta) 0 cosd(theta) 0;0 0 0 1]
    elseif R==7
        T=[cosd(theta) sind(theta) 0 0;-sind(theta) cosd(theta) 0 0;0 0 1 0;0 0 0 1]
end
end

//Reflection
if O==3
    Rf=input('Enter 8 for reflection about xy plane,9 for reflection about yz plane,10 for reflection about zx plane: ')
    if Rf==8
        T=[1 0 0 0;0 1 0 0;0 0 -1 0;0 0 0 1]
    elseif Rf==9
        T=[-1 0 0 0;0 1 0 0;0 0 1 0;0 0 0 1]
    elseif Rf==10
        T=[1 0 0 0;0 -1 0 0;0 0 1 0;0 0 0 1]   
end
end

//Scaling
if O==4
    Sx=input('Enter Scaling value in X-direction: ')
    Sy=input('Enter Scaling value in Y-direction: ')
    Sz=input('Enter Scaling value in Z-direction: ')
    T=[Sx 0 0 0;0 Sy 0 0;0 0 Sz 0;0 0 0 1]
end

disp(T);
Q=P*T;
disp(Q)
xP=[P(1,1) P(2,1) P(3,1) P(4,1) P(5,1) P(1,1)];
yP=[P(1,2) P(2,2) P(3,2) P(4,2) P(5,2) P(1,2)];
zP=[P(1,3) P(2,3) P(3,3) P(4,3) P(5,3) P(1,3)];
xQ=[Q(1,1) Q(2,1) Q(3,1) Q(4,1) Q(5,1) Q(1,1)];
yQ=[Q(1,2) Q(2,2) Q(3,2) Q(4,2) Q(5,2) Q(1,2)];
zQ=[Q(1,3) Q(2,3) Q(3,3) Q(4,3) Q(5,3) Q(1,3)];
plot3d(xP,yP,zP,xQ,yQ,zQ)
