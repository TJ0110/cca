// Program for Orthographic Projections
clc
clear all
a=input('Enter the coordinate of 1st point:  ')
b=input('Enter the coordinate of 2nd point:  ')
c=input('Enter the coordinate of 3rd point:  ')
P=[a;b;c]
disp(P);
disp('The Orthographic Projections for the above matrix are as follows: ')
//Front View
disp('1) The Front View Coordinates are: ')
Fv=[1 0 0 0;0 1 0 0;0 0 0 0;0 0 0 1]
Q=P*Fv;
disp(Q)
//Top View
disp('2) The Top View Coordinates are: ')
Tv=[1 0 0 0;0 0 0 0;0 -1 0 0;0 0 0 1]
R=P*Tv;
disp(R)
//Right Hand Side View
disp('3) The Right Hand Side View Coordinates are: ')
Rsv=[0 0 0 0;0 1 0 0;-1 0 0 0;0 0 0 1]
S=P*Rsv;
disp(S)
