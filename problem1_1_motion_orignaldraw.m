clc,clear,close all 

format long g

figure; 
hold on; 

false_target = [0,0,0];
true_target = [0,200,0];
M1 = [20000,0,2000];
FY1 = [17800,0,1800];

plot3(0, 0, 0, 'bo', 'MarkerSize', 5, 'MarkerFaceColor', 'k');
plot3(0,200,0, 'bo', 'MarkerSize', 5, 'MarkerFaceColor', 'k');
plot3(20000,0,2000, 'bo', 'MarkerSize', 5, 'MarkerFaceColor', 'k');
plot3(17800,0,1800, 'bo', 'MarkerSize', 5, 'MarkerFaceColor', 'k');

text(0, 0, 0, '假目标', ...
    'FontSize', 10, 'Color', 'k', ...
    'HorizontalAlignment', 'left', 'VerticalAlignment', 'bottom');
text(0,200,0, '真目标', ...
    'FontSize', 10, 'Color', 'k', ...
    'HorizontalAlignment', 'left', 'VerticalAlignment', 'bottom');
text(20000,0,2000, 'M1', ...
    'FontSize', 10, 'Color', 'k', ...
    'HorizontalAlignment', 'left', 'VerticalAlignment', 'bottom');
text(17800,0,1800, 'FY1', ...
    'FontSize', 10, 'Color', 'k', ...
    'HorizontalAlignment', 'left', 'VerticalAlignment', 'bottom');

hold off; 

fprintf('M到false_targe运动的的参数方程:\n');
fprintf('x = %.2f - %.8f * t\n', M1(1), 300*cos(atan(2000/20000)))
fprintf('y = %.2f \n', M1(2))
fprintf('z = %.2f - %.8f * t\n', M1(3), 300*sin(atan(2000/20000)))
fprintf('t的范围是0到%.8f秒\n', sqrt(sum((abs(M1 - false_target)).^2 ))./ 300)

fprintf('\n')

fprintf('FY1到false_target运动的的参数方程:\n');
fprintf('x = %.2f - %.8f * t\n', FY1(1), 120)
fprintf('y = %.2f - %.8f * t\n', FY1(2), 0)
fprintf('z = %.2f - %.8f * t\n', FY1(3),0)
fprintf('t的范围是0到%.8f秒\n', sqrt(sum((abs(FY1(1:2) - false_target(1:2))).^2 ))./ 120)


xlabel('X轴（单位为米）');
ylabel('Y轴（单位为米）');
zlabel('Z轴（单位为米）');
title('第一到三问无人机与导弹初始位置图');
grid on; 
view(3);