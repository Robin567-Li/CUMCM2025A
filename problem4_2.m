clc,clear,close all

% hold on

t1_1 = 0.187 ;   
t1_2 = 3.3 ; 
FY1_v = 120; 
theta = 0.01612; 
t1_3 = 5.28710000003429;
t1 = t1_1+t1_2+t1_3;

false_target = [0,0,0];
true_target = [2.73106179015761,206.445254184153,0];
M1 = [20000,0,2000];
% FY1 = [17800,0,1800];
FY2 = [12000,1400,1400];
FY3 = [6000,-3000,700];

M1(1) = M1(1) - 298.51115706 * t1;
M1(2) = M1(2);
M1(3) = M1(3) - 29.85111571 * t1;


M1;
FY2;
for theta = 0:0.1:2*pi
    t2_1 = 1;
    t2_2 = 3;
    FY2_v = 70;
    % theta = 0.2;
    t11 = 2;
    
    FY2(1) = FY2(1) - FY2_v.*cos(theta).* t1;
    FY2(2) = FY2(2) - FY2_v.*sin(theta).* t1;
    FY2(3) = FY2(3);
    % FY2(1) = FY2(1) - FY2_v.*cos(theta) .* (t1-t11);
    % FY2(2) = FY2(2) + FY2_v.*sin(theta).* (t1-t11);
    % FY2(3) = FY2(3) - 0.5*9.80665*(t1-t11)^2; 
    try
        [t3_11,t3_22,duration,FY1_1,FY1_2] = fun4(M1,FY2,t2_1,t2_2,FY1_v,theta)
    catch 
        continue
    end

end



