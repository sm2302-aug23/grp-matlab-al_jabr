% Afif
subplot(2,2,4)

Step 1: Launch MATLAB and create a new script file.

Step 2: Define the control points for the cursive name. These points will form the basis for the spline interpolation.
% Define data points for x and y coordinates
x = [x1 x2 x3 x4 ......];
y = [y1 y2 y3 y4 ......];

n = length(x);
t = 0:n-1;
tt = 0:0.01:n-1;

Step 3: Perform spline interpolation using the spline function.
%Compute the spline interpolation
xx = spline(t, x, tt);
yy = spline(t, y, tt);


Step 4: Visualize and plotting the cursive name.
%Plot settings
figure(1)
plot(xx, yy,'k','LineWidth',1.5) %plot spline
hold on
plot(x, y, 'bo','MarkerFaceColor','b')%plot data points
grid on
title('Spline Interpolation of Afif')
xlabel('x')
ylabel('y')
set(gca,'FontSize',10,'LineWidth',1)
grid on