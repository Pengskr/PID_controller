# PID_controller

使用Matlab实现PID控制器，对一个二阶系统进行控制。使用四阶龙格库塔法作为微分方程的数值解法。使用粒子群算法调节PID参数。

Res_2rd_oreder_sys_demo.mlx 使用四阶龙格库塔法求解二阶系统的响应(不含PID控制器)，并与Matlab内置求解系统响应函数lsim()的求解结果进行对比，验证四阶龙格库塔法求解的正确性。

PID_demo.mlx 使用四阶龙格库塔法求解二阶系统的响应(含PID控制器)，并与simulink仿真结果进行对比，验证四阶龙格库塔法求解的正确性。

Particle_demo.mlx 使用粒子群算法搜索最佳PID参数。