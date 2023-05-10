//BEZIER 

clc
clear

// Input points
p0 = input('Enter the point p0: ');
p1 = input('Enter the point p1: ');
p2 = input('Enter the point p2: ');
p3 = input('Enter the point p3: ');

// Create x and y arrays
x = [p0(1,1); p1(1,1); p2(1,1); p3(1,1)];
y = [p0(1,2); p1(1,2); p2(1,2); p3(1,2)];

// Number of points to plot
num_points = 100;

// Create parameter values
u = linspace(0,1,num_points);

// Compute points on curve
for c = 1:num_points
    limit = [(1-u(c))^3, 3*u(c)*(1-u(c))^2, 3*u(c)^2*(1-u(c)), u(c)^3];
    px(c) = limit*x;
    py(c) = limit*y;
end
disp("Points on Bezier curve:")
disp([px', py'])

// Plot curve
plot(px, py);
title('Cubic Bezier Curve');
