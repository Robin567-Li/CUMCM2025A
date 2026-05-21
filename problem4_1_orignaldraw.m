clc,clear,close all

hold on

false_target = [0,0,0];
true_target = [2.73106179015761,206.445254184153,0];
M1 = [20000,0,2000];
FY1 = [17800,0,1800];
FY2 = [12000,1400,1400];
FY3 = [6000,-3000,700];

plot3(false_target(1),false_target(2),false_target(3), 'bo', 'MarkerSize', 5, 'MarkerFaceColor', 'k');
plot3(true_target(1),true_target(2),true_target(3), 'bo', 'MarkerSize', 5, 'MarkerFaceColor', 'k');
plot3(M1(1),M1(2),M1(3), 'bo', 'MarkerSize', 5, 'MarkerFaceColor', 'k');
plot3(FY1(1),FY1(2),FY1(3), 'bo', 'MarkerSize', 5, 'MarkerFaceColor', 'k');
plot3(FY2(1),FY2(2),FY2(3), 'bo', 'MarkerSize', 5, 'MarkerFaceColor', 'k');
plot3(FY3(1),FY3(2),FY3(3), 'bo', 'MarkerSize', 5, 'MarkerFaceColor', 'k');

text(false_target(1),false_target(2),false_target(3), '假目标', ...
    'FontSize', 10, 'Color', 'k', ...
    'HorizontalAlignment', 'left', 'VerticalAlignment', 'top');
text(true_target(1),true_target(2),true_target(3), '真目标', ...
    'FontSize', 10, 'Color', 'k', ...
    'HorizontalAlignment', 'left', 'VerticalAlignment', 'bottom');
text(M1(1),M1(2),M1(3), 'M1', ...
    'FontSize', 10, 'Color', 'k', ...
    'HorizontalAlignment', 'left', 'VerticalAlignment', 'bottom');
text(FY1(1),FY1(2),FY1(3), 'FY1', ...
    'FontSize', 10, 'Color', 'k', ...
    'HorizontalAlignment', 'left', 'VerticalAlignment', 'bottom');
text(FY2(1),FY2(2),FY2(3), 'FY2', ...
    'FontSize', 10, 'Color', 'k', ...
    'HorizontalAlignment', 'left', 'VerticalAlignment', 'bottom');
text(FY3(1),FY3(2),FY3(3), 'FY3', ...
    'FontSize', 10, 'Color', 'k', ...
    'HorizontalAlignment', 'left', 'VerticalAlignment', 'bottom');

xlabel('X轴（单位为米）');
ylabel('Y轴（单位为米）');
zlabel('Z轴（单位为米）');
title('第四问无人机与导弹初始位置图');

grid on; 
view(3);