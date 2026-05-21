function [t3_11,t3_22,duration,FY1_1,FY1_2] = fun4(M1,FY1,t1,t2,FY1_v,theta)

    false_target = [0,0,0];
    true_target = [2.73106179015761,206.445254184153,0];
    % M1 = [20000,0,2000];
    % FY1 = [17800,0,1800];
    
    M1_1(1) = M1(1) - 298.51115706 * t1;
    M1_1(2) = M1(2);
    M1_1(3) = M1(3) - 29.85111571 * t1;
    M1_2(1) = M1_1(1) - 298.51115706 * t2;
    M1_2(2) = M1_1(2);
    M1_2(3) = M1_1(3) - 29.85111571 * t2;
    
    FY1_1(1) = FY1(1) - FY1_v.*cos(theta).* t1;
    FY1_1(2) = FY1(2) + FY1_v.*sin(theta).* t1;
    FY1_1(3) = FY1(3);
    FY1_2(1) = FY1_1(1) - FY1_v.*cos(theta) .* t2;
    FY1_2(2) = FY1_1(2) + FY1_v.*sin(theta).* t2;
    FY1_2(3) = FY1_1(3) - 0.5*9.80665*t2^2;   

    t3_1 = 0;    
    tic
    while true
        if toc > 2
            error("没遮住")
        end
        M1_3(1) = M1_2(1) - 298.51115706 * t3_1;
        M1_3(2) = M1_2(2);
        M1_3(3) = M1_2(3) - 29.85111571 * t3_1;
        FY1_3(1) = FY1_2(1);
        FY1_3(2) = FY1_2(2);
        FY1_3(3) = FY1_2(3) - 3*t3_1;
        v = M1_3 - true_target; 
        PQ = FY1_3 - true_target;
        flag = norm(cross(PQ,v))/norm(v);
        if flag <= 10
            t3_11 = t3_1;
            break
        end
        t3_1 = t3_1 + 0.00001;
    end
    
    t3_2 = 20; 
    tic
    while true
        if toc > 2
            error("没遮住")
        end
        M1_3(1) = M1_2(1) - 298.51115706 * t3_2;
        M1_3(2) = M1_2(2);
        M1_3(3) = M1_2(3) - 29.85111571 * t3_2;
        FY1_3(1) = FY1_2(1);
        FY1_3(2) = FY1_2(2);
        FY1_3(3) = FY1_2(3) - 3*t3_2;
        flag = sqrt(sum( (M1_3-FY1_3).^2 ));
        if flag <= 10
            t3_22 = t3_2;
            break
        end
        t3_2 = t3_2 - 0.00001;
    end
    duration = t3_22 - t3_11;
    t3_11;
    t3_22;
    % M1_1
    % M1_2
    FY1_1;
    FY1_2;
end