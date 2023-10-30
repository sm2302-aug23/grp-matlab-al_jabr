% Define data points for x and y coordinates
x = [4.65 0.90 1.30 1.00 0.37 2.28 4.64 3.32 4.77 5.97 4.22 6.10 7.30 7.29 7.03 6.39 5.88 5.87 6.16 7.61 7.82 7.80 7.14 7.18 7.40 9.50 10.5 10.2 8.75 7.30 7.40 7.80 8.20 8.00 7.70 7.30 9.12 10.2 11.4 11.1 10.3 10.15 10.9 11.8 13.0 13.1 12.0 11.9 12.87 14.33 14.8 14.8 13.86 14.38 14.64 14.8 14.07 13.4 13.0 16.35 16.45 15.8 16.2 17.56 17.4 17.3 17.76 19.2 21.3 19.5 18.17 18.0 18.50]
y = [9.20 1.40 2.45 3.00 3.13 4.06 4.68 1.55 5.34 7.22 4.59 4.77 5.00 5.33 5.50 5.31 4.36 3.94 3.93 5.48 5.55 5.31 3.94 3.75 3.80 4.87 6.70 7.50 5.15 1.35 1.00 1.20 1.90 2.80 3.00 3.15 4.26 4.73 5.20 5.50 4.90 4.300 4.00 4.40 5.00 5.45 5.00 4.16 4.030 5.380 5.66 4.80 3.830 3.96 3.86 3.50 1.200 0.43 0.90 4.900 5.570 4.00 3.80 4.950 5.20 4.03 3.850 4.60 8.80 6.10 2.45 1.20 0.800]

n = length(x);
t = 0:n-1; % Parametric coordinate t
tt = 0:0.01:n-1; % More dense coordinate tt for spline interpolation

% Compute spline interpolation
xx = spline(t, x, tt);
yy = spline(t, y, tt);

% Plot settings
figure(1)
plot(xx, yy, 'k', 'LineWidth', 1.5) % plot spline   
hold on
plot(x, y, 'bo', 'MarkerFaceColor', 'b') % plot data points
% axis([-0.2 6 -0.2 4.5])
grid on
title('Spline Interpolation of Hafeezul')
xlabel('x')
ylabel('y')
set(gca, 'FontSize', 10, 'LineWidth', 1)
grid on








