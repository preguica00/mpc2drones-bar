load ('states.mat')
load ('control.mat')

[m,m_bar, inertia_moment,arm_moment,g, C_barra, L_barra] = parameters;

% bar
figure
subplot(3,2,1)
plot(state_trajectory(:,5), 'b', 'Linewidth', 1.5);
xlim([1 50])
ylabel('x_{bar} (m)','FontSize',14)
xlabel('Discrete Time','FontSize',14)

subplot(3,2,2)
plot(state_trajectory(:,6),'b', 'Linewidth', 1.5);
xlim([1 50])
ylabel('z_{bar} (m)','FontSize',14)
xlabel('Discrete Time','FontSize',14)

subplot(3,2,3)
plot(rad2deg(state_trajectory(:,9)),'b', 'Linewidth', 1.5);
xlim([1 50])
ylabel('\theta_{bar} (º)','FontSize',14)
xlabel('Discrete Time','FontSize',14)

subplot(3,2,4)
plot(state_trajectory(:,7),'b', 'Linewidth', 1.5);
xlim([1 50])
ylabel('$\dot{x}_{bar}$ (m/s)', 'Interpreter','latex','FontSize',14)
xlabel('Discrete Time','FontSize',14)

subplot(3,2,5)
plot(state_trajectory(:,8),'b', 'Linewidth', 1.5);
xlim([1 50])
ylabel('$\dot{z}_{bar}$ (m/s)', 'Interpreter','latex','FontSize',14)
xlabel('Discrete Time','FontSize',14)

subplot(3,2,6)
plot(rad2deg(state_trajectory(:,10)),'b', 'Linewidth', 1.5);
xlim([1 50])
ylabel('$\dot{\theta_bar}$', 'Interpreter','latex','FontSize',14)
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
subplot(2,2,1)
plot(rad2deg(state_trajectory(:,1)),'b', 'Linewidth', 1.5);
xlim([1 50])
ylabel('\theta_1 (º)','FontSize',14)
xlabel('Discrete Time','FontSize',14)

subplot(2,2,2)
plot(rad2deg(state_trajectory(:,2)),'b', 'Linewidth', 1.5);
xlim([1 50])
ylabel('$\dot{\theta_1}$ ', 'Interpreter','latex','FontSize',14)
xlabel('Discrete Time','FontSize',14)

subplot(2,2,3)
plot(rad2deg(state_trajectory(:,3)),'b', 'Linewidth', 1.5);
xlim([1 50])
ylabel('\theta_2 (º)','FontSize',14)
xlabel('Discrete Time','FontSize',14)

subplot(2,2,4)
plot(rad2deg(state_trajectory(:,4)),'b', 'Linewidth', 1.5);
xlim([1 50])
ylabel('$\dot{\theta_2}$', 'Interpreter','latex','FontSize',14)
xlabel('Discrete Time','FontSize',14)



%drone 1
figure
subplot(1,2,1)
plot(control_variables(:,1),'b', 'Linewidth', 1.5);
xlim([1 50])
ylabel('$u_{1}$ (N)', 'Interpreter','latex','FontSize',14)
xlabel('Discrete Time','FontSize',14)
subplot(1,2,2)
plot(control_variables(:,2),'b', 'Linewidth', 1.5);
xlim([1 50])
ylabel('$u_{2}$ (N)', 'Interpreter','latex','FontSize',14)
xlabel('Discrete Time','FontSize',14)

%drone 2
figure
subplot(1,2,1)
plot(control_variables(:,3),'b', 'Linewidth', 1.5);
xlim([1 50])
ylabel('$u_{3}$ (N)', 'Interpreter','latex','FontSize',14)
xlabel('Discrete Time','FontSize',14)
subplot(1,2,2)
plot(control_variables(:,4),'b', 'Linewidth', 1.5);
xlim([1 50])
ylabel('$u_{4}$ (N)', 'Interpreter','latex','FontSize',14)
xlabel('Discrete Time','FontSize',14)




   