  function  [command, optimum, predicted_trajectory] = optimizetrajectory(current_state, optimum,k)


[m, m_bar, inertia_moment,arm_moment,g, C_barra] = parameters;
%% Initial conditions 
    
    % drone 1
    theta_init_d1 = current_state(1);
    angvelocity_init_d1 = current_state(2);
    
    % drone 2
    theta_init_d2 = current_state(3);
    angvelocity_init_d2 = current_state(4);
    
    %bar
    x_init_bar= current_state(5);
    z_init_bar = current_state(6);
    xvelocity_init_bar = current_state(7);
    zvelocity_init_bar = current_state(8);
    theta_init_bar = current_state(9);
    angvelocity_init_bar = current_state(10);
    
    
    
    init_vector_drones = [theta_init_d1; angvelocity_init_d1; theta_init_d2; angvelocity_init_d2];
    init_vector_bar = [x_init_bar;z_init_bar;xvelocity_init_bar;zvelocity_init_bar;theta_init_bar;angvelocity_init_bar];
    
    init_vector = [init_vector_drones;init_vector_bar];
    
  %% optimizer
  
  [H,Ts,drone1_info, drone2_info, bar_info] = system_info;
     
    %initial conditions
    if isempty(optimum)
        optimum = [zeros(H,1);10*ones(H,1);zeros(3*H,1);10*ones(H,1);zeros(8*H,1)];
    end

    opts = optimoptions('fmincon','Algorithm','sqp','TolFun',0.001,'MaxIter',100000,'MaxFunEvals',100000);
% 
%  
%     lb =[-5*ones(H,1);0*ones(H,1);-Inf*ones(2*H,1);-5*ones(H,1);0*ones(H,1);-Inf*ones(8*H,1)];
%     ub=[5*ones(H,1);30*ones(H,1);Inf*ones(2*H,1);5*ones(H,1);30*ones(H,1); Inf*ones(8*H,1)];

% % %         lb =[-0.5*ones(H,1);-0.1*ones(H,1);-Inf*ones(2*H,1);-0.1*ones(H,1);-0.1*ones(H,1);-Inf*ones(8*H,1)];
%     ub=[0.5*ones(H,1);0.3*ones(H,1);Inf*ones(2*H,1);0.3*ones(H,1);0.2*ones(H,1);Inf*ones(8*H,1)];
lb=[];
ub=[];
    [optimum, ~] = fmincon(@(y)costfunction(y, H,k), optimum,[],[],[],[],lb,ub,@(y)discretization(y,init_vector),opts);
   
   
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

   %% optimal control
   % drone 1
   u1_optimum_d1 = optimum(id1_u1);
   u2_optimum_d1 = optimum(id1_u2);
   theta_optimum_d1 = optimum(id1_theta1);
   angvelocity_optimum_d1 = optimum(id1_dottheta1);
   
   % drone 2
   u3_optimum_d2 = optimum(id2_u3);
   u4_optimum_d2 = optimum(id2_u4);
   theta_optimum_d2 = optimum(id2_theta2);
   angvelocity_optimum_d2 = optimum(id2_dottheta2);
   
   % bar
   x_optimum_bar = optimum(idbar_x);
   z_optimum_bar = optimum(idbar_z);
   xvelocity_optimum_bar = optimum(idbar_dotx);
   zvelocity_optimum_bar = optimum(idbar_dotz);
   theta_optimum_bar = optimum(idbar_theta);
   angvelocity_optimum_bar = optimum(idbar_dottheta);
   
   command =[u1_optimum_d1(1), u2_optimum_d1(1),u3_optimum_d2(1), u4_optimum_d2(1)];

   predicted_trajectory = [theta_optimum_d1,angvelocity_optimum_d1,theta_optimum_d2,angvelocity_optimum_d2,x_optimum_bar,z_optimum_bar, xvelocity_optimum_bar,zvelocity_optimum_bar, theta_optimum_bar,angvelocity_optimum_bar ];

   
  
  end


