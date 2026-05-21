clc,clear,close all 

format long g

figure; 
hold on; 

t1 = 1.5;
t2 = 3.6;
t = t1+t2;
false_target = [0,0,0];
true_target = [0,200,0];
M1 = [20000,0,2000];
FY1 = [17800,0,1800];

M1_1(1) = 20000.00 - 298.51115706 * t1;
M1_1(2) = 0.00;
M1_1(3) = 2000.00 - 29.85111571 * t1;

M1_2(1) = 20000.00 - 298.51115706 * t;
M1_2(2) = 0.00;
M1_2(3) = 2000.00 - 29.85111571 * t;

FY1_1(1) = 17800.00 - 120 * t1;
FY1_1(2) = 0.00;
FY1_1(3) = 1800.00;

FY1_2(1) = 17800.00 - 120 * t;
FY1_2(2) = 0.00;
FY1_2(3) = FY1_1(3) - 0.5*9.80665*t2^2;

M1_1
M1_2

FY1_1
FY1_2

plot3(0, 0, 0, 'bo', 'MarkerSize', 5, 'MarkerFaceColor', 'k');
plot3(0,200,0, 'bo', 'MarkerSize', 5, 'MarkerFaceColor', 'k');
% plot3(20000,0,2000, 'bo', 'MarkerSize', 5, 'MarkerFaceColor', 'k');
% plot3(17800,0,1800, 'bo', 'MarkerSize', 5, 'MarkerFaceColor', 'k');
plot3(M1_2(1),M1_2(2),M1_2(3), 'bo', 'MarkerSize', 5, 'MarkerFaceColor', 'k');
plot3(FY1_2(1),FY1_2(2),FY1_2(3), 'bo', 'MarkerSize', 5, 'MarkerFaceColor', 'k');

xlabel('X轴');
ylabel('Y轴');
zlabel('Z轴');
title('');
text(false_target(1), false_target(2), false_target(3), '假目标', ...
    'FontSize', 10, 'Color', 'k', ...
    'HorizontalAlignment', 'left', 'VerticalAlignment', 'bottom');
text(true_target(1),true_target(2),true_target(3), '真目标', ...
    'FontSize', 10, 'Color', 'k', ...
    'HorizontalAlignment', 'left', 'VerticalAlignment', 'bottom');
% text(M1(1),M1(2),M1(3), 'M1', ...
%     'FontSize', 10, 'Color', 'k', ...
%     'HorizontalAlignment', 'left', 'VerticalAlignment', 'bottom');
% text(M1_1(1),M1_1(2),M1_1(3), 'M1_1', ...
%     'FontSize', 10, 'Color', 'k', ...
%     'HorizontalAlignment', 'left', 'VerticalAlignment', 'bottom');
text(M1_2(1),M1_2(2),M1_2(3), 'M1_2', ...
    'FontSize', 10, 'Color', 'k', ...
    'HorizontalAlignment', 'left', 'VerticalAlignment', 'bottom');
% text(FY1(1),FY1(2),FY1(3), 'FY1', ...
%     'FontSize', 10, 'Color', 'k', ...
%     'HorizontalAlignment', 'left', 'VerticalAlignment', 'bottom');
% text(FY1_1(1),FY1_1(2),FY1_1(3), 'FY1_1', ...
%     'FontSize', 10, 'Color', 'k', ...
%     'HorizontalAlignment', 'left', 'VerticalAlignment', 'bottom');
text(FY1_2(1),FY1_2(2),FY1_2(3), 'FY1_2', ...
    'FontSize', 10, 'Color', 'k', ...
    'HorizontalAlignment', 'left', 'VerticalAlignment', 'bottom');

hold off; 


grid on; 
view(3);