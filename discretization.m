function [c, ceq] = discretization(y,init_vector)

[H,Ts,drone1_info, drone2_info, bar_info] = system_info;
[m, m_bar, inertia_moment,arm_moment,g, C_barra] = parameters;

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

%%
current_state=init_vector;
state =[current_state, [theta_d1,angular_velocity_d1,theta_d2,angular_velocity_d2,x_bar,z_bar,x_velocity_bar,z_velocity_bar,theta_bar,theta_velocity_bar]'];
control=[mode_diff_d1,mode_common_d1, mode_diff_d2,mode_common_d2]';


% Run discrete prediction
ceq = [];
% for j=1:2
for i = 1:H
%     ceq = [ceq; [(state(j+1,i+1) - timestep_euler(Ts,state(j,i), control(j,i)))]];

ceq = [ceq; [(state(:,i+1) - timestep_euler(Ts,state(:,i), control(:,i)))]];

end




% c = [sum(radius+0.9) - vecnorm([com_x';com_z']-obj_coord)];
% c=(sqrt((x_d2-x_d1).^2+(z_d2-z_d1).^2)-3);
z1= z_bar-(C_barra/2)*sin(theta_bar);
z2= z_bar+(C_barra/2)*sin(theta_bar);

c=[];
end
