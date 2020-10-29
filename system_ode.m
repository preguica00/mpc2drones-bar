function dydt = system_ode(t,y,u)
[H,Ts,drone1_info, drone2_info, bar_info] = system_info;
[m, m_bar, m_bar2,inertia_moment,arm_moment,g, C_barra] = parameters;
 %% Unpack the state and input vectors


%states drone 1
theta_d1= y(1);
dottheta_d1= y(2);

%states drone 2
theta_d2= y(3);
dottheta_d2= y(4);

%states bar
x_bar= y(5);
z_bar = y(6);
dotx_bar= y(7);
dotz_bar= y(8);
theta_bar =  y(9);
dottheta_bar = y(10);

%control variables drone 1
diff_mode_d1  = u(1);
common_mode_d1 = u(2);

%control variables drone 2
diff_mode_d2  = u(3);
common_mode_d2 = u(4);

%%Equations of motion
x_acceleration_bar = (-common_mode_d1*sin(theta_d1)-common_mode_d2*sin(theta_d2))/(2*m+m_bar2);

z_acceleration_bar = ((-2*m-m_bar2)*g+ common_mode_d1*cos(theta_d1)+common_mode_d2*cos(theta_d2))/(2*m+m_bar2);

pitch_acceleration_d1 = (arm_moment/inertia_moment)*diff_mode_d1;

pitch_acceleration_d2 = (arm_moment/inertia_moment)*diff_mode_d2;

angle_acceleration_bar= (common_mode_d2*cos(theta_d2-theta_bar) - common_mode_d1*cos(theta_d1-theta_bar))/(inertia_moment+m*(C_barra^2)/2);

%%
drone = [dottheta_d1;pitch_acceleration_d1;dottheta_d2;pitch_acceleration_d2];
dydt=[drone; dotx_bar;dotz_bar;x_acceleration_bar;z_acceleration_bar;dottheta_bar; angle_acceleration_bar];

end