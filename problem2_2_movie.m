clc,clear,close all 

format long g


for t1 = 0:0.0368:0.184

    hold on; 
    false_target = [0,0,0];
    true_target = [0,200,0];
    M1 = [20000,0,2000];
    FY1 = [17800,0,1800];
    FY1_v = 119.1;
    theta = -0.01529;
    
    M1(1) = M1(1) - 298.51115706 * t1;
    M1(2) = M1(2);
    M1(3) = M1(3) - 29.85111571 * t1;
    
    FY1(1) = FY1(1) - FY1_v.*cos(theta).* t1;
    FY1(2) = FY1(2) - FY1_v.*sin(theta).* t1;
    FY1(3) = FY1(3);  
    
    plot3(false_target(1),false_target(2),false_target(3), 'bo', 'MarkerSize', 3, 'MarkerFaceColor', 'k');
    plot3(true_target(1),true_target(2),true_target(3), 'bo', 'MarkerSize', 3, 'MarkerFaceColor', 'k');
    plot3(M1(1),M1(2),M1(3), 'bo', 'MarkerSize', 3, 'MarkerFaceColor', 'k');
    plot3(FY1(1),FY1(2),FY1(3), 'bo', 'MarkerSize', 3, 'MarkerFaceColor', 'k');
    
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
        'HorizontalAlignment', 'left', 'VerticalAlignment', 'top');
    
    xlabel('X轴（单位为米）');
    ylabel('Y轴（单位为米）');
    zlabel('Z轴（单位为米）');
    title('第二问无人机与导弹位置动图');

    view(3);
    grid on;
    xlim([-2000 20000]);
    ylim([-20 250]);
    zlim([-100 2200]);
    pause(0.5)
    clf

end





% -----------------------------------------------------------------------







for t2 = 0:0.3:3.3

    hold on; 
    t1 = 0.184;
    false_target = [0,0,0];
    true_target = [0,200,0];
    M1 = [20000,0,2000];
    FY1 = [17800,0,1800];
    FY1_v = 119.1;
    theta = -0.01529;
    
    M1(1) = M1(1) - 298.51115706 * t1;
    M1(2) = M1(2);
    M1(3) = M1(3) - 29.85111571 * t1;
    M1(1) = M1(1) - 298.51115706 * t2;
    M1(2) = M1(2);
    M1(3) = M1(3) - 29.85111571 * t2;
    
    FY1(1) = FY1(1) - FY1_v.*cos(theta).* t1;
    FY1(2) = FY1(2)- FY1_v.*sin(theta).* t1;
    FY1(3) = FY1(3);
    FY1(1) = FY1(1) - FY1_v.*cos(theta).* t2;
    FY1(2) = FY1(2)- FY1_v.*sin(theta).* t2;
    FY1(3) = FY1(3) - 0.5*9.80665*t2^2;
    
    
    
    plot3(false_target(1),false_target(2),false_target(3), 'bo', 'MarkerSize', 3, 'MarkerFaceColor', 'k');
    plot3(true_target(1),true_target(2),true_target(3), 'bo', 'MarkerSize', 3, 'MarkerFaceColor', 'k');
    plot3(M1(1),M1(2),M1(3), 'bo', 'MarkerSize', 3, 'MarkerFaceColor', 'k');
    plot3(FY1(1),FY1(2),FY1(3), 'bo', 'MarkerSize', 3, 'MarkerFaceColor', 'k');
    
    text(false_target(1),false_target(2),false_target(3), '假目标', ...
        'FontSize', 10, 'Color', 'k', ...
        'HorizontalAlignment', 'left', 'VerticalAlignment', 'top');
    text(true_target(1),true_target(2),true_target(3), '真目标', ...
        'FontSize', 10, 'Color', 'k', ...
        'HorizontalAlignment', 'left', 'VerticalAlignment', 'bottom');
    text(M1(1),M1(2),M1(3), 'M1', ...
        'FontSize', 10, 'Color', 'k', ...
        'HorizontalAlignment', 'left', 'VerticalAlignment', 'bottom');
    text(FY1(1),FY1(2),FY1(3), '烟雾弹', ...
        'FontSize', 10, 'Color', 'k', ...
        'HorizontalAlignment', 'left', 'VerticalAlignment', 'top');
    
    xlabel('X轴（单位为米）');
    ylabel('Y轴（单位为米）');
    zlabel('Z轴（单位为米）');
    title('第二问无人机与导弹位置动图');

    view(3);
    grid on;
    xlim([-2000 20000]);
    ylim([-20 250]);
    zlim([-100 2200]);
    pause(0.5)
    clf

end





% -----------------------------------------------------------------------


for t3 = 0:0.5:8

    hold on; 
    t1 = 0.184;
    t2 = 3.3;
    false_target = [0,0,0];
    true_target = [0,200,0];
    M1 = [20000,0,2000];
    FY1 = [17800,0,1800];
    theta = -0.01529;
    
    M1(1) = M1(1) - 298.51115706 * t1;
    M1(2) = M1(2);
    M1(3) = M1(3) - 29.85111571 * t1;
    M1(1) = M1(1) - 298.51115706 * t2;
    M1(2) = M1(2);
    M1(3) = M1(3) - 29.85111571 * t2;
    
    FY1(1) = FY1(1) - FY1_v.*cos(theta).* t1;
    FY1(2) = FY1(2)- FY1_v.*sin(theta).* t1;
    FY1(3) = FY1(3);
    FY1(1) = FY1(1) - FY1_v.*cos(theta).* t2;
    FY1(2) = FY1(2)- FY1_v.*sin(theta).* t2;
    FY1(3) = FY1(3) - 0.5*9.80665*t2^2;

    M1(1) = M1(1) - 298.51115706 * t3;
    M1(2) = M1(2);
    M1(3) = M1(3) - 29.85111571 * t3;
    FY1(1) = FY1(1) - FY1_v.*cos(theta).* t1;
    FY1(2) = FY1(2)- FY1_v.*sin(theta).* t1;
    FY1(3) = FY1(3) - 3*t3;
    
    
    plot3(false_target(1),false_target(2),false_target(3), 'bo', 'MarkerSize', 3, 'MarkerFaceColor', 'k');
    plot3(true_target(1),true_target(2),true_target(3), 'bo', 'MarkerSize', 3, 'MarkerFaceColor', 'k');
    plot3(M1(1),M1(2),M1(3), 'bo', 'MarkerSize', 3, 'MarkerFaceColor', 'k');
    plot3(FY1(1),FY1(2),FY1(3), 'bo', 'MarkerSize', 20, 'MarkerFaceColor', 'k');
    
    text(false_target(1),false_target(2),false_target(3), '假目标', ...
        'FontSize', 10, 'Color', 'k', ...
        'HorizontalAlignment', 'left', 'VerticalAlignment', 'top');
    text(true_target(1),true_target(2),true_target(3), '真目标', ...
        'FontSize', 10, 'Color', 'k', ...
        'HorizontalAlignment', 'left', 'VerticalAlignment', 'bottom');
    text(M1(1),M1(2),M1(3), 'M1', ...
        'FontSize', 10, 'Color', 'k', ...
        'HorizontalAlignment', 'left', 'VerticalAlignment', 'bottom');
    text(FY1(1),FY1(2),FY1(3), '云团', ...
        'FontSize', 10, 'Color', 'k', ...
        'HorizontalAlignment', 'left', 'VerticalAlignment', 'top');
    
    xlabel('X轴（单位为米）');
    ylabel('Y轴（单位为米）');
    zlabel('Z轴（单位为米）');
    title('第二问无人机与导弹位置动图');

    view(3);
    grid on;
    xlim([-2000 20000]);
    ylim([-20 250]);
    zlim([-100 2200]);
    pause(0.5)
    clf

end