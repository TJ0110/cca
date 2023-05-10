  //EXPERIMENT 5
// HERMITE CURVE
clc
clear

// Input points
a = input('Enter the start point of the curve: ');
b = input('Enter the end point of the curve: ');
a1 = input('Enter the tangent on the start point of the curve: ');
b1 = input('Enter the tangent on the end point of the curve: ');


// Create x and y arrays
x = [a(1,1); b(1,1); a1(1,1); b1(1,1)];
y = [a(1,2); b(1,2); a1(1,2); b1(1,2)];

// Hermite matrix
HM = [2 -2 1 1; -3 3 -2 -1; 0 0 1 0; 1 0 0 0];

// Number of points to plot
num_points = 10;

// Create parameter values
u = linspace(0,1,num_points);

// Compute points on curve
for c = 1:num_points
    s = [u(c)^3, u(c)^2, u(c), 1];
    px(c) = s*HM*x;
    py(c) = s*HM*y;
end

// Plot curve
plot(px, py);
title('Cubic Hermite Curve');
xlabel('x');
ylabel('y');


