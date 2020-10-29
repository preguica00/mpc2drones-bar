load('disturbance_MSEH2.mat')
load('disturbance_MSEH3.mat')
load('disturbance_MSEH5.mat')
load('disturbance_MSEH10.mat')
load('disturbance_MSEH15.mat')
load('disturbance_MSEH20.mat')

%%--------------
load('eqm_H2.mat')
load('eqm_H3.mat')
load('eqm_H5.mat')
load('eqm_H10.mat')
load('eqm_H15.mat')
load('eqm_H20.mat')

MSEH2=vecnorm(eqm_H2);
MSEH3=vecnorm(eqm_H3);
MSEH5=vecnorm(eqm_H5);
MSEH10=vecnorm(eqm_H10);
MSEH15=vecnorm(eqm_H15);
MSEH20=vecnorm(eqm_H20);


distMSEH2=vecnorm(disturbance_MSEH2);
distMSEH3=vecnorm(disturbance_MSEH3);
distMSEH5=vecnorm(disturbance_MSEH5);
distMSEH10=vecnorm(disturbance_MSEH10);
distMSEH15=vecnorm(disturbance_MSEH15);
distMSEH20=vecnorm(disturbance_MSEH20);


H_MSE= [distMSEH2,distMSEH3,distMSEH5,distMSEH10,distMSEH15,distMSEH20];
H_MSE_original= [MSEH2,MSEH3,MSEH5,MSEH10,MSEH15,MSEH20];

xaxis_H=[2,3,5,10,15,20];
xaxisH=[2,3,5,10,15,20];

figure
plot(xaxisH,H_MSE_original,'b--','Linewidth', 1.5)
hold on;
plot(xaxis_H,H_MSE,'b','Linewidth', 1.5)
xlim([2 20])
xlabel('$H$','Interpreter','latex','FontSize',14)
ylabel('$MSE$','Interpreter','latex','FontSize',14)
legend({'original signal', 'signal with AWGN ($SNR=15$)'}, 'Interpreter','latex','FontSize',12)

figure
plot(xaxisH,H_MSE_original,'b','Linewidth', 1.5)
xlim([2 20])
xlabel('$H$','Interpreter','latex','FontSize',14)
ylabel('$MSE$','Interpreter','latex','FontSize',14)

%%---------
load('disturbance_MSEtS01.mat')
load('disturbance_MSEtS02.mat')
load('disturbance_MSEtS03.mat')
load('disturbance_MSEtS05.mat')
load('disturbance_MSEtS07.mat')

%%--------------
load('eqm_Ts01.mat')
load('eqm_Ts02.mat')
load('eqm_Ts03.mat')
load('eqm_Ts05.mat')
load('eqm_Ts07.mat')

MSEts01=vecnorm(eqm_Ts01);
MSEts02=vecnorm(eqm_Ts02);
MSEts03=vecnorm(eqm_Ts03);
MSEts05=vecnorm(eqm_Ts05);
MSEts07=vecnorm(eqm_Ts07);



distMSETs01=vecnorm(disturbance_MSEtS01);
distMSETs02=vecnorm(disturbance_MSEtS02);
distMSETs03=vecnorm(disturbance_MSEtS03);
distMSETs05=vecnorm(disturbance_MSEtS05);
distMSETs07=vecnorm(disturbance_MSEtS07);


Ts_MSE= [distMSETs01,distMSETs02,distMSETs03,distMSETs05,distMSETs07];
Ts_MSE_original= [MSEts01,MSEts02,MSEts03,MSEts05,MSEts07];

xaxis_Ts=[0.1,0.2,0.3,0.5,0.7];

figure
plot(xaxis_Ts,Ts_MSE_original,'b--','Linewidth', 1.5)
hold on;
plot(xaxis_Ts,Ts_MSE,'b','Linewidth', 1.5)
xlim([0.1 0.7])
xlabel('$T_s$','Interpreter','latex','FontSize',14)
ylabel('$MSE$','Interpreter','latex','FontSize',14)
legend({'original signal', 'signal with AWGN ($SNR=25$)'}, 'Interpreter','latex','FontSize',12)

