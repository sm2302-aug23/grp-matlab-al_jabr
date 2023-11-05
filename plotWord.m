function plotWord(inputString)
% Initialize figure to plot letters
figure;
hold on;

% Initialize a variable to keep track of the end position of x
% Initially, endposx = 0 as it starts from x = 0
endposx = 0;

for i = 1:length(inputString)
    letter = inputString(i);

    switch letter
            case 'a'
                x = [4.2 3.8 2.95 2.6 3 3.8 4.53 4.7 4.05 4.4 5.3] + endposx;
                y = [3.5 3.9 3.35 2.4 2.25 3.1 3.86 3.7 2.3 2.16 2.8];
            case 'b'
                x = [4 5.5 5.45 4.56 3.54 3.96 4.54 4 3.54 3.96 5] + endposx;
                y = [3.76 6.3 6.53 5.2 2.76 2.2 3.1 3.76 2.76 2.2 3.4];
            case 'c'
                x = [4.6 4.94 4.5 3.1 3.57 5.15] + endposx;
                y = [3.34 3.8 4.24 2.76 2.1 2.77];
            case 'd'
                x = [5.1 4.8 4.3 3.5 3.16 3.55 4.4 5.1 5.7 6.5 6.8 5.1 4.66 5.1 5.6] + endposx;
                y = [3.2 3.75 3.75 3.15 2.36 2.07 2.3 3.2 4.4 5.65 5.56 3.2 1.34 0.73 1];
            case 'e'
                x = [3.65 4.3 4.67 4.33 3.65 3.5 3.84 4.7] + endposx;
                y = [3 3.1 3.45 3.65 3 2.4 2.1 2.5];
            case 'f'
                x = [3.8 6 5.8 4.6 3.8 3.14 3.54 3.7 3.25 3.8 5.4] + endposx;
                y = [2.6 6 6.44 4.6 2.6 0.85 1.1 2.03 2.5 2.6 2.8];
            case 'm'
                x = [2.1 1.75 2.35 3.5 3.7 2.9 3.65 4.3 4.1 4.35 5.3 6.3] + endposx;
                y = [4.05 3.05 3.45 4.55 4.4 2.85 3.05 3.3 2.25 2.05 2.4 3.45];
            case 'n'
                x = [2.4 2.3 3 3.7 3.95 3.8 4.05 5.15 5.8] + endposx;
                y = [3.8 2.75 3.5 3.5 3.15 2.2 2.05 2.7 3.5];
            case 'o'
                x = [3.1 3.8 4.1 3.75 3.2 2.95 3 3.7 4 4.05 4.85] + endposx;
                y = [3.15 3.75 3.5 2.4 2.05 2.2 2.9 3.8 3.7 2.95 2.9];
            case 'p'
                x = [2.9 4.2 3.75 1.75 3.1 4.3 4.95 4.65 3.5 3.3 4.5 6.05] + endposx;
                y = [3.35 5.6 5.15 0.3 3.15 4.4 4.15 3.25 2.3 2.65 3.45 4.1];
            case 'q'
                x = [4.5 4.45 3.85 2.9 3.1 4.8 2.95 4.9 5.85] + endposx;
                y = [3.95 4.65 5.05 4.25 3.6 4.1 0.25 1.7 1.95];
            case 'r'
                x = [2.85 3.55 3.1 3 3.65 4.2 4.55 5.25] + endposx;
                y = [2.5 3.65 3.15 2.25 3.45 3.4 2.85 2.9];
            case 's'
                x = [4.65 4.8 4.05 3.45 3.85 3.1 2.7 3.45 5.4] + endposx;
                y = [4.35 4.9 4.95 4.35 3.05 2.1 2.6 3.15 4];
    end

    n = length(x);
    t = 0:n-1; % Paremetric coordinate t
    tt = 0:0.01:n-1; % More dense coordinate tt for spline interpolation

    % Compute spline interpolation
    xx = spline(t, x, tt);
    yy = spline(t, y, tt);

    % Plot the cursive letter
    plot(xx, yy, 'k', 'Linewidth', 1.5);

    % Update the end position for the next letter
    endposx = max(xx) - 2.5;
end

% Set plot properties
grid on;
    title('Spline Interpolation of Cursive Letters');
    xlabel('x');
    ylabel('y');
    set(gca, 'FontSize', 10, 'LineWidth', 1);
    
    hold off;
end


