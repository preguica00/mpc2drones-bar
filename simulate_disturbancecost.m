load ('disturbance_costH2.mat')
load ('disturbance_costH3.mat')
load ('disturbance_costH5.mat')
load ('disturbance_costH10.mat')
load ('disturbance_costH15.mat')
load ('disturbance_costH20.mat')


load ('costH2.mat')
load ('costH3.mat')
load ('costH5.mat')
load ('costH10.mat')
load ('costH15.mat')
load ('costH20.mat')

cost_H2=vecnorm(costH2);
cost_H3=vecnorm(costH3);
cost_H5=vecnorm(costH5);
cost_H10=vecnorm(costH10);
cost_H15=vecnorm(costH15);
cost_H20=vecnorm(costH20);

distcostH2=vecnorm(disturbance_costH2);
distcostH3=vecnorm(disturbance_costH3);
distcostH5=vecnorm(disturbance_costH5);
distcostH10=vecnorm(disturbance_costH10);
distcostH15=vecnorm(disturbance_costH15);
distcostH20=vecnorm(disturbance_costH20);

H_cost= [distcostH2,distcostH3,distcostH5,distcostH10,distcostH15,distcostH20];

xaxis_H=[2,3,5,10,15,20];

Hcost_original= [cost_H2,cost_H3,cost_H5,cost_H10,cost_H15, cost_H20];

xaxisH=[2,3,5,10,15,20];
figure
plot(xaxisH,Hcost_original,'r--','Linewidth', 1.5)
hold on;
plot(xaxis_H,H_cost,'r','Linewidth', 1.5)
xlim([2 20])
xlabel('$H$','Interpreter','latex','FontSize',14)
ylabel('$J$','Interpreter','latex','FontSize',14)
legend({'original signal', 'signal with AWGN ($SNR=15$)'}, 'Interpreter','latex','FontSize',12)

figure
plot(xaxisH,Hcost_original,'r','Linewidth', 1.5)
xlim([2 20])
xlabel('$H$','Interpreter','latex','FontSize',14)
ylabel('$J$','Interpreter','latex','FontSize',14)

%%%%%%%%%
load ('disturbance_costtS01.mat')
load ('disturbance_costtS02.mat')
load ('disturbance_costtS03.mat')
load ('disturbance_costtS05.mat')
load ('disturbance_costtS07.mat')
load ('disturbance_costtS04.mat')

%%%%%%%%%
load ('plotcostts01.mat')
load ('plotcostts02.mat')
load ('plotcostts03.mat')
load ('plotcostts05.mat')
load ('plotcostts07.mat')

costTs01=vecnorm(plotcostts01);
costTs02=vecnorm(plotcostts02);
costTs03=vecnorm(plotcostts03);
costTs05=vecnorm(plotcostts05);
costTs07=vecnorm(plotcostts07);


distcostTs01=vecnorm(disturbance_costtS01);
distcostTs02=vecnorm(disturbance_costtS02);
distcostTs03=vecnorm(disturbance_costtS03);
distcostTs04=vecnorm(disturbance_costtS04);
distcostTs05=vecnorm(disturbance_costtS05);
distcostTs07=vecnorm(disturbance_costtS07);

Ts_cost= [distcostTs01,distcostTs02,distcostTs03,distcostTs05,distcostTs07];

xaxisTs=[0.1,0.2,0.3,0.5,0.7];
xaxis_Ts=[0.1,0.2,0.3, 0.5,0.7];

Ts_cost_original= [costTs01,costTs02,costTs03,costTs05, costTs07];

figure
plot(xaxis_Ts,Ts_cost_original,'r--','Linewidth', 1.5)
hold on;
plot(xaxisTs,Ts_cost,'r','Linewidth', 1.5)
xlim([0.1 0.7])
xlabel('$T_s$','Interpreter','latex','FontSize',14)
ylabel('$J$','Interpreter','latex','FontSize',14)
legend({'original signal', 'signal with AWGN ($SNR=25$)'}, 'Interpreter','latex','FontSize',12)
