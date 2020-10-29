function current_state = simulate_timestep(current_state,command)
 
[H,Ts,drone1_info, drone2_info, bar_info] = system_info;

    tspan = [0 Ts];

%     tpoints = [0 1*10^(-5)];
    options = odeset('RelTol',1e10,'AbsTol',1e-20, 'Refine',11000);

    my_ode = @(t,y) system_ode(t,y,command);
    [~, y] = ode15s(my_ode,tspan, current_state,options);
    
    current_state = [y(end,1), y(end,2),y(end,3),y(end,4),y(end,5),y(end,6),y(end,7),y(end,8),y(end,9),y(end,10)];
%     
%      my_ode = @(t,y) system_ode(t,y,command);
%     [~, y] = ode45(my_ode,tpoints, current_state);
%     extrapoints = [y(end,1), y(end,2),y(end,3),y(end,4),y(end,5),y(end,6),y(end,7),y(end,8),y(end,9),y(end,10)];
%     
%     
end