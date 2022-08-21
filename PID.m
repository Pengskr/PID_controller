function u = PID(r, y, dt, Kp, Ki, Kd)
    % r:参考信号
    % y:系统输出
    % dt:时间间隔
    global sum_e e_last
    
    e = r-y;
    delta_e = e - e_last;       % 注意是 e - e_last，如果反过来Kd的符号需要改变
    sum_e = sum_e + e * dt;     % 注意此处的 e * dt，积分需要乘以dt (这两处关键点均在验证算法过程中得以修正)
    
    u = Kp * e + Ki * sum_e + Kd * delta_e / dt;
    
    e_last = e;
end