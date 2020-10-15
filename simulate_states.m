load ('states.mat')
load ('control.mat')

[m, m_bar, inertia_moment,arm_moment,g, C_barra] = parameters;
% bar
figure
title('Bar-related states')
subplot(3,2,1)
plot(state_trajectory(:,5), 'b', 'Linewidth', 1);
xlim([1 50])
ylabel('x_{bar} (m)','FontSize',14)
xlabel('Discrete Time','FontSize',14)

subplot(3,2,2)
plot(state_trajectory(:,6),'b', 'Linewidth', 1);
xlim([1 50])
ylabel('z_{bar} (m)','FontSize',14)
xlabel('Discrete Time','FontSize',14)

subplot(3,2,3)
plot(rad2deg(state_trajectory(:,9)),'b', 'Linewidth', 1);
xlim([1 50])
ylabel('\theta_{bar} (º)','FontSize',14)
xlabel('Discrete Time','FontSize',14)

subplot(3,2,4)
plot(state_trajectory(:,7),'b', 'Linewidth', 1);
xlim([1 50])
ylabel('$\dot{x}_{bar}$ (m/s)', 'Interpreter','latex','FontSize',14)
xlabel('Discrete Time','FontSize',14)

subplot(3,2,5)
plot(state_trajectory(:,8),'b', 'Linewidth', 1);
xlim([1 50])
ylabel('$\dot{z}_{bar}$ (m/s)', 'Interpreter','latex','FontSize',14)
xlabel('Discrete Time','FontSize',14)

subplot(3,2,6)
plot(rad2deg(state_trajectory(:,10)),'b', 'Linewidth', 1);
xlim([1 50])
ylabel('$\dot{\theta_{bar}}$', 'Interpreter','latex','FontSize',14)
xlabel('Discrete Time','FontSize',14)


% subplot(2,2,3)
% plot(state_trajectory(:,7),'b', 'Linewidth', 1.5);
% xlim([1 50])
% ylabel('$f_1$ (N)', 'Interpreter','latex')
% xlabel('Discrete Time')
% 
% subplot(2,2,4)
% plot(state_trajectory(:,8),'b', 'Linewidth', 1.5);
% xlim([1 50])
% ylabel('$f_2$ (N)', 'Interpreter','latex')
% xlabel('Discrete Time')


%% Drones

figure
title('Pitch angles of both drones')
plot(rad2deg(state_trajectory(:,1)),'r', 'Linewidth', 1);
hold on;
plot(rad2deg(state_trajectory(:,3)),'color',[0 0.5 0], 'Linewidth', 1);
xlim([1 50])
legend({'\theta_1 (º)','\theta_2 (º)'}, 'FontSize',12)
xlabel('Discrete Time','FontSize',14)

figure
title('angular speeds of both drones')
plot(rad2deg(state_trajectory(:,2)),'r', 'Linewidth', 1);
hold on;
plot(rad2deg(state_trajectory(:,4)),'color',[0 0.5 0], 'Linewidth', 1);
xlim([1 50])
legend({'$\dot{\theta_1}$ ','$\dot{\theta_2}$'}, 'Interpreter','latex','FontSize',12)
xlabel('Discrete Time','FontSize',14)



%drone 1
figure
title('Differential mode of both drones')
plot(control_variables(:,1),'r', 'Linewidth', 1);
hold on;
plot(control_variables(:,3),'color',[0 0.5 0], 'Linewidth', 1);
xlim([1 50])
legend({'$u_{1}$ (N)','$u_{3}$ (N) '},'Interpreter','latex','FontSize',12)
xlabel('Discrete Time','FontSize',14)

%drone 2
figure
title('Common mode of both drones')
plot(control_variables(:,2),'r', 'Linewidth', 1);
hold on;
plot(control_variables(:,4),'color',[0 0.5 0], 'Linewidth', 1);
xlim([1 50])
legend({'$u_{2}$ (N)','$u_{4}$ (N)'}, 'Interpreter','latex','FontSize',12)
xlabel('Discrete Time','FontSize',12)





   