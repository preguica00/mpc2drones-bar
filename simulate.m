function simulate()

    close all
    clf
    hold on
    
    
[m, m_bar, m_bar2,inertia_moment,arm_moment,g, C_barra] = parameters;
[H,Ts,drone1_info, drone2_info, bar_info] = system_info;

        
    plot_prediction_bar = plot(0,0,'om-', 'Linewidth', 1);
    plot_trajectory_bar = plot(C_barra/2,0,'or-','Linewidth', 1);

    plot_trajectory_d1 = plot(0,0,'ob-','Linewidth', 1.5);
    plot_trajectory_d2 = plot(C_barra,0,'ok-','Linewidth', 1.5);
    
    plot_barra5 = plot(0,0,'Color',[1 0.6 0],'LineWidth',3);
    plot_barra10 = plot(0,0,'Color',[1 0.6 0],'LineWidth',3);
    plot_barra17 = plot(0,0,'Color',[1 0.6 0],'LineWidth',3);
    plot_barra30 = plot(0,0,'Color',[1 0.6 0],'LineWidth',3);

    state_trajectory=[];
    control_variables=[];
    commands=[];
    axis square
    ylim([0 4])
    xlim([-2 2])
%     
    xbarra5=[];
    zbarra5=[];
    thetabarra5=[];

    xbarra10=[];
    zbarra10=[];
    thetabarra10=[];
    
    xbarra17=[];
    zbarra17=[];
    thetabarra17=[];
    
    xbarra30=[];
    zbarra30=[];
    thetabarra30=[];

    
    current_state = [0;0;0;0;C_barra/2;0;0;0;0;0];
    current_MPC_solution = [];
    noise_costH20 = [];
    noise_MSEH20 = [];
    
%    set(gca,'nextplot','replacechildren','visible','off')
% f = getframe;
% [im,map] = rgb2ind(f.cdata,306,'nodither');
% im(1,1,1,38) = 0; 

%     plot(xobs,yobs, '-k','Linewidth', 1.5);

    for k = 1:40
        %% Run the controller

        [costt,command, current_MPC_solution, predicted_trajectory] = ...
            optimizetrajectory(current_state, current_MPC_solution,k);
        
        %%noise in sensors current_MPC_solution+ additive white noise
        %% Run the simulation
%         current_state = awgn(current_state,30);


        current_state = simulate_timestep(current_state, command);

%                 current_state= awgn(current_state,15);

        %% Visualize
%         plot_prediction_bar.XData = predicted_trajectory(:,5);
%         plot_prediction_bar.YData = predicted_trajectory(:,6);

        plot_trajectory_bar.XData(end+1) = current_state(5);
        plot_trajectory_bar.YData(end+1) = current_state(6);
        
        plot_trajectory_d1.XData(end+1) = current_state(5)- ( (C_barra/2)*cos(current_state(9)) );
        plot_trajectory_d1.YData(end+1) = current_state(6)- ( (C_barra/2)*sin(current_state(9)) );

        
        plot_trajectory_d2.XData(end+1) = current_state(5)+( (C_barra/2)*cos(current_state(9)) );
        plot_trajectory_d2.YData(end+1) = current_state(6)+( (C_barra/2)*sin(current_state(9)) );

    
        if k==5
            xbarra5= current_state(5);
            zbarra5= current_state(6);
            thetabarra5=current_state(9);
            
            plot_barra5.XData =  [ C_barra*cos(thetabarra5) 0]+ xbarra5- ( (C_barra/2)*cos(thetabarra5) );
            plot_barra5.YData =  [ 0 C_barra*sin(thetabarra5)]+zbarra5- ( (C_barra/2)*sin(thetabarra5) );
            
        end
        
        if k==10
            xbarra10= current_state(5);
            zbarra10= current_state(6);
            thetabarra10=current_state(9);
            
            plot_barra10.XData =  [ C_barra*cos(thetabarra10) 0]+ xbarra10- ( (C_barra/2)*cos(thetabarra10) );
            plot_barra10.YData =  [ 0 C_barra*sin(thetabarra10)]+zbarra10- ( (C_barra/2)*sin(thetabarra10) );
            
        end  
        
        if k==17
            xbarra17= current_state(5);
            zbarra17= current_state(6);
            thetabarra17=current_state(9);
            
            plot_barra17.XData =  [ C_barra*cos(thetabarra17) 0]+ xbarra17- ( (C_barra/2)*cos(thetabarra17) );
            plot_barra17.YData =  [ 0 C_barra*sin(thetabarra17)]+zbarra17- ( (C_barra/2)*sin(thetabarra17) );
            
        end
        
        if k==30
            xbarra30= current_state(5);
            zbarra30= current_state(6);
            thetabarra30=current_state(9);
            
            plot_barra30.XData =  [ C_barra*cos(thetabarra30) 0]+ xbarra30- ( (C_barra/2)*cos(thetabarra30) );
            plot_barra30.YData =  [ 0 C_barra*sin(thetabarra30)]+zbarra30- ( (C_barra/2)*sin(thetabarra30) );
            
        end
        

          
        state_trajectory(end+1,:) = current_state;
        control_variables(end+1,:) = current_MPC_solution;
        commands(end+1,:) = command;
%         pontosextra(end+1,:)=extrapoints;

        %%calculo funçao custo
%         noise_costH20(end+1,:) = costt;

        %diferença valor observado e predito
        desviotheta1=vecnorm( current_state(1)-predicted_trajectory(:,1));
        desviodottheta1=vecnorm( current_state(2)-predicted_trajectory(:,2));
        desviotheta2=vecnorm( current_state(3)-predicted_trajectory(:,3));
        desviodottheta2=vecnorm( current_state(4)-predicted_trajectory(:,4));
        
        desviox=vecnorm( current_state(5)-predicted_trajectory(:,5));
        desvioz=vecnorm( current_state(6)-predicted_trajectory(:,6));
        desviodotx=vecnorm( current_state(7)-predicted_trajectory(:,7));
        desviodotz=vecnorm( current_state(8)-predicted_trajectory(:,8));
        desviothetab=vecnorm( current_state(9)-predicted_trajectory(:,9));
        desviodotthetab=vecnorm( current_state(10)-predicted_trajectory(:,10));
        
        %& x_1 = x_b - \frac{c}{2}\cos(\theta_b)\\
        %& z_1 = z_b - \frac{c}{2}\sin(\theta_b) \\        
        
        %erro quadratico medio
        
        eqm_drones = (vecnorm(desviotheta1).^2)+(vecnorm(desviodottheta1).^2)+(vecnorm(desviotheta2).^2)+(vecnorm(desviodottheta2).^2);
        eqm_barra = (vecnorm(desviox).^2)+(vecnorm(desvioz).^2)+(vecnorm(desviodotx).^2)+(vecnorm(desviodotz).^2)+(vecnorm(desviothetab).^2)+(vecnorm(desviodotthetab).^2);
        
%         noise_MSEH20(end+1,:) =(1/50)*eqm_drones+(1/50)*eqm_barra;
%     f = getframe;
%   im(:,:,1,k) = rgb2ind(f.cdata,map,'nodither');
%       
%         drawnow
        pause(0.05)
        
        legend([plot_trajectory_d1 plot_trajectory_d2, plot_trajectory_bar],'Drone 1','Drone 2', 'bar', 'Location','northwest')
a=k

    end

% imwrite(im,map,'newwTrajetoria2.gif','DelayTime',0.1,'LoopCount',inf) %g443800

    figure
    plot(commands(:,1));
    hold on
    plot(commands(:,2));
     figure
    plot(commands(:,3));
    hold on
    plot(commands(:,4));

    
% figure
% plot(noise_costH200)
% 
% figure
% plot(noise_costH20)

save('states.mat','state_trajectory')
save('control.mat','control_variables')
% save('extra.mat','pontosextra')

% save('noise_costH20.mat','noise_costH20')
% save('noise_MSEH20.mat','noise_MSEH20')

end
