// Program for 2-D transformation
clc
clear all
a=input('Enter the coordinate of 1st point:  ')
b=input('Enter the coordinate of 2nd point:  ')
c=input('Enter the coordinate of 3rd point:  ')
P=[a;b;c]
disp(P);

O=input('Enter 1 for Translation,2 for Rotation ,3 for Scaling,4 for Mirroring,5 for Shear: ')
//Translation
if O==1 then
    tx=input('Enter the value of tx:  ')
    ty=input('Enter the value of ty:  ')
    T=[1 0 0;0 1 0;tx ty 1]
end
//Rotation
if O==2
    R=input('Enter 1 for Clockwise,2 for CounterClockwise: ')
    theta=input('Enter the value of rotation angle: ')
    if R==1 
        T=[cosd(theta) -sind(theta) 0;sind(theta) cosd(theta) 0;0 0 1]
    else R==2
        T=[cosd(theta) sind(theta) 0;-sind(theta) cosd(theta) 0;0 0 1]
end
end
//Scaling
if O==3
    Sx=input('Enter Scaling value in X-direction: ')
    Sy=input('Enter Scaling value in Y-direction: ')
    T=[Sx 0 0;0 Sy 0;0 0 1]    
end
//Mirroring
if O==4
    M=input('Enter 1 for About X-axis,2 for About Y-axis,3 for About both axis,4 for About y=x,5 for About y=-x: ')
    if M==1 
        T=[1 0 0;0 -1 0;0 0 1]
    elseif M==2
        T=[-1 0 0;0 1 0;0 0 1]
    elseif M==3
        T=[-1 0 0;0 -1 0;0 0 1]
    elseif M==4
        T=[0 1 0;1 0 0;0 0 1]
    elseif M==5
        T=[0 -1 0;-1 0 0;0 0 1]
end
end
//Shearing
if O==5
    Sh=input('Enter 1 for About X-axis,2 for About Y-axis: ')
    if Sh==1 
        b=input('Enter Shear factor about X: ')
        T=[1 0 0;b 1 0;0 0 1]
    elseif Sh==2
        a=input('Enter Shear factor about Y: ')
        T=[1 a 0;0 1 0;0 0 1]
end
end
disp(T);
Q=P*T;
disp(Q)
xP=[P(1,1) P(2,1) P(3,1) P(1,1)];
yP=[P(1,2) P(2,2) P(3,2) P(1,2)];
xQ=[Q(1,1) Q(2,1) Q(3,1) Q(1,1)];
yQ=[Q(1,2) Q(2,2) Q(3,2) Q(1,2)];
plot(xP,yP,xQ,yQ)
