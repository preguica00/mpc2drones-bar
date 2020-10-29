load ('noise_costTs01.mat')
load ('noise_costTs02.mat')
load ('noise_costTs03.mat')
load ('noise_costTs05.mat')
load ('noise_costTs07.mat')

load ('plotcostts02.mat')
load ('plotcostts03.mat')
load ('plotcostts05.mat')
load ('plotcostts1.mat')
load ('plotcostts01.mat')
load ('plotcostts07.mat')
load ('plotcostts06.mat')
load ('plotcostts04.mat')

%%--------
load ('costH2.mat')
load ('costH3.mat')
load ('costH5.mat')
load ('costH10.mat')
load ('costH15.mat')
load ('costH25.mat')
load ('costH23.mat')



costTs01=vecnorm(plotcostts01);
costTs02=vecnorm(plotcostts02);
costTs03=vecnorm(plotcostts03);
costTs05=vecnorm(plotcostts05);
costTs1=vecnorm(plotcostts1);
costTs07=vecnorm(plotcostts07);
costTs06=vecnorm(plotcostts06);
costTs04=vecnorm(plotcostts04);

noisecostTs01=vecnorm(noise_costTs01);
noisecostTs02=vecnorm(noise_costTs02);
noisecostTs03=vecnorm(noise_costTs03);
noisecostTs05=vecnorm(noise_costTs05);
noisecostTs07=vecnorm(noise_costTs07);

%%falta 8 e 20
y_noise= [noisecostTs01,noisecostTs02,noisecostTs03,noisecostTs05,noisecostTs07];

y_cost= [costTs01,costTs02,costTs03,costTs05,costTs07];

xaxis_Ts=[0.1,0.2,0.3,0.5,0.7];
figure
plot(xaxis_Ts,y_cost,'r--','Linewidth', 1.5)
hold on;
plot(xaxis_Ts,y_noise,'r','Linewidth', 1.5)
xlim([0.1 0.7])
xlabel('$T_s$','Interpreter','latex','FontSize',14)
ylabel('$J$','Interpreter','latex','FontSize',14)
% ylim([0 32730])
legend({'original signal', 'signal with AWGN ($SNR=25$)'}, 'Interpreter','latex','FontSize',12)

%%------------
cost_H2=vecnorm(costH2);
cost_H3=vecnorm(costH3);
cost_H5=vecnorm(costH5);
cost_H10=vecnorm(costH10);
cost_H15=vecnorm(costH15);
cost_H25=vecnorm(costH25);
cost_H23=vecnorm(costH23);

eqm2=vecnorm(eqm_H2);
eqm3=vecnorm(eqm_H3);
eqm5=vecnorm(eqm_H5);
eqm10=vecnorm(eqm_H10);
eqm15=vecnorm(eqm_H15);
eqm25=vecnorm(eqm_H25);

load ('noise_costH2.mat')
load ('noise_costH3.mat')
load ('noise_costH5.mat')
load ('noise_costH10.mat')
load ('noise_costH15.mat')
load ('noise_costH20.mat')

load ('noise_MSEH2.mat')
load ('noise_MSEH3.mat')
load ('noise_MSEH5.mat')
load ('noise_MSEH10.mat')
load ('noise_MSEH15.mat')
load ('noise_MSEH20.mat')


noisecost_H2=vecnorm(noise_costH2);
noisecost_H3=vecnorm(noise_costH3);
noisecost_H5=vecnorm(noise_costH5);
noisecost_H10=vecnorm(noise_costH10);
noisecost_H15=vecnorm(noise_costH15);
noisecost_H20=vecnorm(noise_costH20);

%%falta 8 e 20
y_cost= [cost_H3,cost_H5,cost_H10,cost_H15,cost_H23,cost_H25];
noise_cost= [noisecost_H2,noisecost_H3,noisecost_H5,noisecost_H10,noisecost_H15,noisecost_H20];
xaxis_H=[2,3,5,10,15,20];
figure
plot(xaxis_H,y_cost,'r--','Linewidth', 1.5)
hold on;
plot(xaxis_H,noise_cost,'r','Linewidth', 1.5)
xlim([2 20])
xlabel('$H$','Interpreter','latex','FontSize',14)
ylabel('$J$','Interpreter','latex','FontSize',14)
legend({'original signal', 'signal with AWGN ($SNR=15$)'}, 'Interpreter','latex','FontSize',12)

% 
% 
% y_eqm= [eqm3,eqm5,eqm10,eqm15,eqm25];
% x2axis_H=[3,5,10,15,25];
% figure
% plot(x2axis_H,y_eqm,'b','Linewidth', 1.5)
% xlim([3 25])
% xlabel('$H$','Interpreter','latex','FontSize',14)
% ylabel('MSE','Interpreter','latex','FontSize',14)


