load ('plotcostts02.mat')
load ('plotcostts03.mat')
load ('plotcostts05.mat')
load ('plotcostts1.mat')
load ('plotcostts01.mat')
load ('plotcostts07.mat')
load ('plotcostts06.mat')
load ('plotcostts04.mat')


costTs01=vecnorm(plotcostts01);
costTs02=vecnorm(plotcostts02);
costTs03=vecnorm(plotcostts03);
costTs05=vecnorm(plotcostts05);
costTs1=vecnorm(plotcostts1);
costTs07=vecnorm(plotcostts07);
costTs06=vecnorm(plotcostts06);
costTs04=vecnorm(plotcostts04);

%%falta 8 e 20
y_cost= [costTs01,costTs02,costTs03,costTs05,costTs06,costTs07];
xaxis_Ts=[0.1,0.2,0.3,0.5,0.6,0.7];
figure
plot(xaxis_Ts,y_cost,'r','Linewidth', 1.5)
xlim([0.1 0.7])
xlabel('$T_s$','Interpreter','latex','FontSize',14)
ylabel('$J$','Interpreter','latex','FontSize',14)
% ylim([0 32730])


% figure
% plot(plotcostts01,'color', [0.1 0.67 0.19], 'Linewidth', 1.5);
% hold on;
% plot(plotcostts02,'b--', 'Linewidth', 1.5);
% hold on;
% plot(plotcostts03,'color',[0.93 0.69 0.13], 'Linewidth', 1.5);
% hold on;
% plot(plotcostts05,'r', 'Linewidth', 1.5);
% % hold on;
% % plot(plotcostts1,'b', 'Linewidth', 1.5);
% xlim([1 50])
% legend({'$T_s=0.1$','$T_s=0.2$','$T_s=0.3$','$T_s=0.5$'}, 'Interpreter','latex','FontSize',14)
% xlabel('Discrete Time','FontSize',14)
% ylabel('$J$','Interpreter','latex','FontSize',18)
