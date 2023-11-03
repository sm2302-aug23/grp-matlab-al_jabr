% Hafeezul
subplot(2, 2, 1)
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

% Hafiz
subplot(2, 2, 2)
% Define data points for x and y coordinates
x = [5 3.7 2.4 1 1.4 1.4 1.3 0.9 0.55 2.35 3.65 4.9 5.05 5.6 5.6 5.65 6.4 5.9 5.7 5.6 5.4 4.6 3.8 3.7 4.05 4.35 4.6 5 5.6 6.45 6.65 6.95 7.25 7.6 7.8 7.85 7.9 7.35 6.55 6.25 6.35 6.65 8.1 8.25 8.4 7.9 7.7 7.75 8.1 8.7 9.25 10.75 11.25 10.95 10.55 8.85 8.25 7.95 8.1 8.6 8.7 8.6 8.15 7.9 10.65 11.3 11.65 11.9 12.05 11.85 11.65 11.2 10.85 10.85 11.15 11.6 12.85 13.05 13.45 13.8 14.05 13.9 13.45 12.85 13.45 13.8 13.9 13.5 12.7 12.3 12 12.15 13.45 15.45];
y = [10 7 4.4 2 2.3 2.8 3.1 3.45 3.65 4.4 4.9 5.1 5.35 6.6 6.85 7.05 7.9 7.1 6.9 6.85 6.7 4.95 2.75 2.05 2.9 3.6 4.4 5 5.35 5.2 5.4 5.9 6.1 6 5.8 5.45 5.85 6.05 5.45 4.5 4.35 4.4 5.95 6.1 6 5.05 4.3 4.2 4.3 4.7 5.3 6.65 7.9 8.5 7.95 4.35 2.6 1.55 1.3 2.2 2.7 3.05 3.45 3.55 5.1 5.6 6.15 6.45 6.9 6.95 6.7 5.8 4.7 4.25 4.1 4.3 5.2 5.7 6.1 6.2 5.95 5.5 4.85 4.3 4.35 4.25 3.9 2.5 1.15 0.75 0.8 1.55 3.4 5.3];

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
title('Spline Interpolation of Cursive Name Hafiz')
xlabel('x')
ylabel('y')
set(gca, 'FontSize', 10, 'LineWidth', 1)
grid on


% Danish
subplot(2,2,3)
% Define data points for x and y coordinates
x = [2.4 1.5 2.5 4 5.2 6.5 5 1.6 0.6 2.4 4 6.3 6.8 7.1 7.5 7.8 7.9 7.4 6.8 6.2 6.6 8.1 8.4 8.3 7.6 7.8 8 9.2 9.5 9.4 9.1 9.3 9.8 10.3 10.6 10.8 11 11.5 12.1 13.1 13 12.8 12.3 12.9 13.5 15.3 15.6 15.1 14.1 14.5 13.9 13.4 14 15.9 16.7 17.2 17.1 16.9 15.9 16 16.2 17.2 17.5 17.8 18.1 18.4 19];
y = [7.5 4 6 7.5 7.8 6.5 4 2 3.5 4.7 4.9 5.1 5.2 5.5 5.6 5.5 5.6 5.7 5.4 4.3 4.1 5.6 5.8 5.4 4 3.8 3.9 4.7 5 5.3 4.3 4.1 4.6 5 5.2 5 3.6 3.7 4.2 5.8 6 5.8 3.9 3.9 4.2 5.3 5.7 6 5.3 4.2 3.1 3.4 4 4.9 6 7 7.2 7 4 3.7 4 5.5 5.7 5.5 3.8 3.6 4.4];

n = length(x);
t = 0:n-1;
tt = 0:0.01:n-1;

%Compute the spline interpolation
xx = spline(t, x, tt);
yy = spline(t, y, tt);

%Plot settings
figure(1)
plot(xx, yy,'k','LineWidth',1.5) %plot spline
hold on
plot(x, y, 'bo','MarkerFaceColor','b')%plot data points
grid on
title('Spline Interpolation of Cursive Letter D')
xlabel('x')
ylabel('y')
set(gca,'FontSize',10,'LineWidth',1)
grid on



