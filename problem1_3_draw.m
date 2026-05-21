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
FY1_1(3) = 1800.00 - 0.00000000 * t1;

FY1_2(1) = 17800.00 - 120 * t;
FY1_2(2) = 0.00;
FY1_2(3) = FY1_1(3) - 0.5*9.8*t2^2;

M1_1
M1_2

FY1_1
FY1_2

% 定义球心坐标和半径
centerX = 17188   ;
centerY = 0;
centerZ = 1736.496;
radius = 10; % 例如，设置半径为 200，您可以根据需要调整
n = 50; % 网格划分数，值越大球面越光滑
[X, Y, Z] = sphere(n);
X = X * radius + centerX;
Y = Y * radius + centerY;
Z = Z * radius + centerZ;
surf(X, Y, Z, 'FaceAlpha', 0.5); % 'FaceAlpha' 设置透明度
hold on; % 如果您需要在现有三维图上叠加，请使用此命令
plot3(centerX, centerY, centerZ, 'r', 'MarkerSize', 5, 'MarkerFaceColor', 'r'); % 标记球心

axis equal; % 重要：设置坐标轴比例相等，确保球体看起来是圆的

plot3(M1_2(1),M1_2(2),M1_2(3), 'bo', 'MarkerSize', 5, 'MarkerFaceColor', 'k');
plot3(FY1_2(1),FY1_2(2),FY1_2(3), 'bo', 'MarkerSize', 5, 'MarkerFaceColor', 'k');

xlabel('X轴');
ylabel('Y轴');
zlabel('Z轴');
title('');

text(M1_2(1),M1_2(2),M1_2(3), 'M1_2', ...
    'FontSize', 10, 'Color', 'k', ...
    'HorizontalAlignment', 'left', 'VerticalAlignment', 'bottom');
text(FY1_2(1),FY1_2(2),FY1_2(3), 'FY1_2', ...
    'FontSize', 10, 'Color', 'k', ...
    'HorizontalAlignment', 'left', 'VerticalAlignment', 'bottom');

hold off; 

axis equal;
grid on; 
view(3);
