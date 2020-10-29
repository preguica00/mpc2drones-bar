function cost = costfunction(y, H,k)

[H,Ts,drone1_info, drone2_info, bar_info] = system_info;
[m, m_bar, m_bar2,inertia_moment,arm_moment,g, C_barra] = parameters;
costt=[];
%% Unpacking drones
% drone 1 
id1_u1 = drone1_info(1,:);
id1_u2 = drone1_info(2,:);
id1_theta1 = drone1_info(3,:);
id1_dottheta1 = drone1_info(4,:);

% drone 2
id2_u3 = drone2_info(1,:);
id2_u4 = drone2_info(2,:);
id2_theta2 = drone2_info(3,:);
id2_dottheta2 = drone2_info(4,:);

% bar
idbar_x = bar_info(1,:);
idbar_z = bar_info(2,:);
idbar_dotx = bar_info(3,:);
idbar_dotz = bar_info(4,:);
idbar_theta = bar_info(5,:);
idbar_dottheta = bar_info(6,:);
 
 %% Assigning drone variables
% drone 1
mode_diff_d1 = y(id1_u1);
mode_common_d1 = y(id1_u2);
theta_d1 = y(id1_theta1);
angular_velocity_d1 = y(id1_dottheta1);

% drone 2
mode_diff_d2 = y(id2_u3);
mode_common_d2 = y(id2_u4);
theta_d2 = y(id2_theta2);
angular_velocity_d2 = y(id2_dottheta2);

% bar
x_bar = y(idbar_x);
z_bar = y(idbar_z);
x_velocity_bar = y(idbar_dotx);
z_velocity_bar = y(idbar_dotz);
theta_bar = y(idbar_theta);
theta_velocity_bar = y(idbar_dottheta);



%%positions drones
x1= x_bar-(C_barra/2)*cos(theta_bar);
x2= x_bar+(C_barra/2)*cos(theta_bar);
z1= z_bar-(C_barra/2)*sin(theta_bar);
z2= z_bar+(C_barra/2)*sin(theta_bar);

% %%
% vector_drone1 = [102*mode_diff_d1; mode_common_d1; 3*theta_d1; 3*angular_velocity_d1];
% vector_drone2 = [102*mode_diff_d2; mode_common_d2;5*theta_d2; 4*angular_velocity_d2];
% vector_bar = [x_bar;z_bar;1.2*x_velocity_bar;1.3*z_velocity_bar;250*theta_bar;140*theta_velocity_bar];
%%
% vector_drone1 = [13.5*mode_diff_d1; mode_common_d1; 5*theta_d1;4*angular_velocity_d1];
% vector_drone2 = [13.5*mode_diff_d2; mode_common_d2;5*theta_d2;4*angular_velocity_d2];
% vector_bar = [x_bar;1.04*z_bar;x_velocity_bar;z_velocity_bar;theta_bar;theta_velocity_bar];
%%
vector_drone1 = [36*mode_diff_d1; mode_common_d1; theta_d1;angular_velocity_d1];
vector_drone2 = [36*mode_diff_d2; mode_common_d2;theta_d2; angular_velocity_d2];
vector_bar = [x_bar;1.05*z_bar;x_velocity_bar;z_velocity_bar;theta_bar;theta_velocity_bar];


% vector_drone1 = [50*mode_diff_d1; mode_common_d1; theta_d1; angular_velocity_d1];
% vector_drone2 = [50*mode_diff_d2; mode_common_d2;theta_d2; angular_velocity_d2];
% vector_bar = [x_bar;z_bar;x_velocity_bar;z_velocity_bar;80*theta_bar;50*theta_velocity_bar];

vector_variables=[vector_drone1;vector_drone2;vector_bar];

% Xref = k*x_velocity_bar;
ref =cos(2*pi/k);

ref_drone1= [zeros(H,1); 10*ones(H,1);zeros(2*H,1)];
ref_drone2= [zeros(H,1); 10*ones(H,1);zeros(2*H,1)];
ref_bar= [ref*ones(H,1);4.05*ones(H,1);zeros(2*H,1);zeros(2*H,1)];

% ref_bar= [5*ones(H,1);5.04*ones(H,1);zeros(2*H,1);zeros(2*H,1)];
%(-pi/4)*ones(H/2,1);(pi/4)*ones(H/2,1
ref_system=[ref_drone1;ref_drone2;ref_bar];


cost = sum(vecnorm(vector_variables-ref_system).^2);
% 
% costt(end+1,:) = cost;
% 
% if k==50
% save('costTs0.2.mat','costt')
% end
end