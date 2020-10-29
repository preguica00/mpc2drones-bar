load ('states.mat')
load ('control.mat')
load('extra.mat')

theta_bar = rad2deg(state_trajectory(:,9));
dottheta_bar = rad2deg(state_trajectory(:,10));
theta1 = rad2deg(state_trajectory(:,1));
dottheta1 = rad2deg(state_trajectory(:,2));
theta2 = rad2deg(state_trajectory(:,3));
dottheta2 = rad2deg(state_trajectory(:,4));
xbar = state_trajectory(:,5);
dotxbar= state_trajectory(:,7);
zbar=state_trajectory(:,6);
dotzbar=state_trajectory(:,8);

figure
plot(state_trajectory(:,5), 'b', 'Linewidth', 1.5);
xlim([1 40])
ylim([0.5 1])
ylabel('x_{bar} (m)','FontSize',14)
xlabel('Discrete Time','FontSize',14)

figure
plot(state_trajectory(:,7),'b', 'Linewidth', 1.5);
xlim([1 40])
ylabel('$\dot{x}_{bar}$ (m/s)', 'Interpreter','latex','FontSize',14)
xlabel('Discrete Time','FontSize',14)

figure
plot(state_trajectory(:,6),'b', 'Linewidth', 1.5);
xlim([1 40])
ylim([0 4])
% ylim([0 1.99])
ylabel('z_{bar} (m)','FontSize',14)
xlabel('Discrete Time','FontSize',14)


figure
plot(state_trajectory(:,8),'b', 'Linewidth', 1.5);
xlim([1 40])
ylabel('$\dot{z}_{bar}$ (m/s)', 'Interpreter','latex','FontSize',14)
xlabel('Discrete Time','FontSize',14)


figure
% subplot(2,1,1)
plot(rad2deg(state_trajectory(:,9)),'b', 'Linewidth', 1.5);
xlim([1 40])
ylabel('\theta_{bar} (º)','FontSize',14)
xlabel('Discrete Time','FontSize',14)

figure
plot(rad2deg(state_trajectory(:,10)),'b', 'Linewidth', 1.5);
xlim([1 40])
ylabel('$\dot{\theta_{bar}}$ $(^\circ / s)$', 'Interpreter','latex','FontSize',14)
xlabel('Discrete Time','FontSize',14)


% Drones

figure
plot(rad2deg(state_trajectory(:,1)),'b', 'Linewidth', 1.5);
xlim([1 40])
ylabel({'\theta_1 (º)'}, 'FontSize',12)
xlabel('Discrete Time','FontSize',14)


figure
plot(rad2deg(state_trajectory(:,2)),'b', 'Linewidth', 1.5);
xlim([1 40])
ylabel({'$\dot{\theta_1}$  $(^\circ / s)$'}, 'Interpreter','latex','FontSize',12)
xlabel('Discrete Time','FontSize',14)

figure
plot(rad2deg(state_trajectory(:,3)),'b', 'Linewidth', 1.5);
xlim([1 40])
ylabel({'\theta_2 (º)'}, 'FontSize',12)
xlabel('Discrete Time','FontSize',14)

figure
plot(rad2deg(state_trajectory(:,4)),'b' ,'Linewidth', 1.5);
xlim([1 40])
ylabel({'$\dot{\theta_2}$ $(^\circ / s)$'}, 'Interpreter','latex','FontSize',12)
xlabel('Discrete Time','FontSize',14)


% 
% % drone 1
figure
stairs(control_variables(:,1),'-k', 'Linewidth', 1);
xlim([1 40])
ylabel({'$\tau_{1}$ (N)'},'Interpreter','latex','FontSize',12)
xlabel('Discrete Time','FontSize',14)

figure
stairs(control_variables(:,3), '-k','Linewidth', 1);
xlim([1 40])
ylabel({'$\tau_{2}$ (N) '},'Interpreter','latex','FontSize',12)
xlabel('Discrete Time','FontSize',14)

%drone 2
%tau1
figure
stairs(control_variables(:,2),'-k', 'Linewidth', 1.5);
xlim([1 40])
ylabel({'$T_{1}$ (N)'}, 'Interpreter','latex','FontSize',12)
xlabel('Discrete Time','FontSize',12)

figure
stairs(control_variables(:,4),'-k', 'Linewidth', 1);
xlim([1 40])
%legend({'$T_{2}$ (N)'}, 'Interpreter','latex','FontSize',12)
xlabel('Discrete Time','FontSize',12)
ylabel('$T_{2}$ (N)','Interpreter','latex','FontSize',12)


% 
% 
% 
%    