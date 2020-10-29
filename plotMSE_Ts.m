load ('eqm_Ts01.mat')
load ('eqm_Ts02.mat')
load ('eqm_Ts03.mat')
load ('eqm_Ts05.mat')
load ('eqm_Ts05.mat')
load ('eqm_Ts06.mat')
load ('eqm_Ts07.mat')
load ('eqm_Ts04.mat')

eqm01=vecnorm(eqm_Ts01);
eqm02=vecnorm(eqm_Ts02);
eqm03=vecnorm(eqm_Ts03);
eqm05=vecnorm(eqm_Ts05);
eqm06=vecnorm(eqm_Ts06);
eqm07=vecnorm(eqm_Ts07);
eqm04=vecnorm(eqm_Ts04);

y_cost= [eqm01,eqm02,eqm03,eqm04,eqm05,eqm07];
xaxis=[0.1,0.2,0.3,0.4,0.5,0.7];
figure
plot(xaxis,y_cost,'b','Linewidth', 1.5)
xlim([0.1 0.7])
xlabel('$T_s$','Interpreter','latex','FontSize',14)
ylabel('MSE','FontSize',14)

