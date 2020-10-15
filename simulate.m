function simulate()

    close all
    clf
    hold on
    
    
[m, m_bar, inertia_moment,arm_moment,g, C_barra] = parameters;
[H,Ts,drone1_info, drone2_info, bar_info] = system_info;

        
    plot_prediction_bar = plot(0,0,'om-', 'Linewidth', 1);
    plot_trajectory_bar = plot(C_barra/2,0,'dr-','Linewidth', 1);

    plot_trajectory_d1 = plot(0,0,'db-','Linewidth', 1.5);
    plot_trajectory_d2 = plot(C_barra,0,'ok-','Linewidth', 1.5);
    

    state_trajectory=[];
    control_variables=[];
    commands=[];
    axis square
    xlim([0 6])
    ylim([0 5])
%     
    current_state = [0;0;0;0;C_barra/2;0;0;0;0;0];
    current_MPC_solution = [];
    

%     plot(xobs,yobs, '-k','Linewidth', 1.5);

    for k = 1:50
        
        %% Run the controller
        [command, current_MPC_solution, predicted_trajectory] = ...
            optimizetrajectory(current_state, current_MPC_solution,k);
        
        %% Run the simulation
        current_state = simulate_timestep(current_state, command);

        %% Visualize
%         plot_prediction_bar.XData = predicted_trajectory(:,5);
%         plot_prediction_bar.YData = predicted_trajectory(:,6);
        plot_trajectory_bar.XData(end+1) = current_state(5);
        plot_trajectory_bar.YData(end+1) = current_state(6);
        
        plot_trajectory_d1.XData(end+1) = current_state(5)- ( (C_barra/2)*cos(current_state(9)) );
        plot_trajectory_d1.YData(end+1) = current_state(6)- ( (C_barra/2)*sin(current_state(9)) );

        
        plot_trajectory_d2.XData(end+1) = current_state(5)+( (C_barra/2)*cos(current_state(9)) );
        plot_trajectory_d2.YData(end+1) = current_state(6)+( (C_barra/2)*sin(current_state(9)) );

%         
        state_trajectory(end+1,:) = current_state;
        control_variables(end+1,:) = current_MPC_solution;
        commands(end+1,:) = command;
        drawnow
        pause(0.05)
        
  legend([plot_trajectory_d1 plot_trajectory_d2, plot_trajectory_bar],'Drone 1','Drone 2', 'bar')

%     legend([plot_trajectory_bar], 'bar')

    end
    figure
    plot(commands(:,1));
    hold on
    plot(commands(:,2));
     figure
    plot(commands(:,3));
    hold on
    plot(commands(:,4));
%     hold on
%     plot(command(:,2));
     
%     figure
%     plot(command(:,3));
%     hold on
%     plot(command(:,4));
%     
    save('states.mat','state_trajectory')
    save('control.mat','control_variables')

end
