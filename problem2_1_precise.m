clc,clear,close all

format long g

% t1 = 0.187 ;   
% t2 = 3.3 ; 
% FY1_v = 120; 
% theta = 0.01612; 

t1 = 0.187 ;   
t2 = 3.3 ; 
FY1_v = 120; 
theta = 0.01612; 

try
    [t3_11,t3_22,duration,FY1_1,FY1_2] = fun2(t1,t2,FY1_v,theta)
    % duration
catch
    disp("遮不到")
end







