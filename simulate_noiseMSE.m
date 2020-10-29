load ('noise_MSEH2.mat')
load ('noise_MSEH3.mat')
load ('noise_MSEH5.mat')
load ('noise_MSEH10.mat')
load ('noise_MSEH15.mat')
load ('noise_MSEH25.mat')

load ('eqm_H2.mat')
load ('eqm_H3.mat')
load ('eqm_H5.mat')
load ('eqm_H10.mat')
load ('eqm_H15.mat')
load ('eqm_H20.mat')

%%----------
% load ('eqm_Ts01.mat')
% load ('eqm_Ts02.mat')
% load ('eqm_Ts03.mat')
% load ('eqm_Ts05.mat')
% load ('eqm_Ts05.mat')
% load ('eqm_Ts06.mat')
% load ('eqm_Ts07.mat')
% load ('eqm_Ts04.mat')
% 
% %----------------------
% load ('noise_MSETs01.mat')
% load ('noise_MSETs02.mat')
% load ('noise_MSETs03.mat')
% load ('noise_MSETs05.mat')
% load ('noise_MSETs07.mat')

MSEnoiseH2=vecnorm(noise_MSEH2);
MSEnoiseH3=vecnorm(noise_MSEH3);
MSEnoiseH5=vecnorm(noise_MSEH5);
MSEnoiseH10=vecnorm(noise_MSEH10);
MSEnoiseH15=vecnorm(noise_MSEH15);
MSEnoiseH20=vecnorm(noise_MSEH20);

eqm2=vecnorm(eqm_H2);
eqm3=vecnorm(eqm_H3);
eqm5=vecnorm(eqm_H5);
eqm10=vecnorm(eqm_H10);
eqm15=vecnorm(eqm_H15);
eqm20=vecnorm(eqm_H20);

% eqmts01=vecnorm(eqm_Ts01);
% eqmts02=vecnorm(eqm_Ts02);
% eqmts03=vecnorm(eqm_Ts03);
% eqmts05=vecnorm(eqm_Ts05);
% eqmts07=vecnorm(eqm_Ts07);

%%falta 8 e 20
noise_MSE= [MSEnoiseH2,MSEnoiseH3,MSEnoiseH5,MSEnoiseH10,MSEnoiseH15,MSEnoiseH20];
xaxis_H=[2,3,5,10,15,20];

y_eqm= [eqm2, eqm3,eqm5,eqm10,eqm15,eqm20];
figure
plot(xaxis_H,noise_MSE,'b','Linewidth', 1.5)
hold on;
plot(xaxis_H,y_eqm,'b--','Linewidth', 1.5)
xlim([2 20])
% ylim([-5000 4.5*10^5])
xlabel('$H$','Interpreter','latex','FontSize',14)
ylabel('MSE','Interpreter','latex','FontSize',14)
legend({'original signal', 'signal with AWGN ($SNR=15$)'}, 'Interpreter','latex','FontSize',12)

%%------------
noisemse_Ts01=vecnorm(noise_MSETs01);
noisemse_Ts02=vecnorm(noise_MSETs02);
noisemse_Ts03=vecnorm(noise_MSETs03);
noisemse_Ts05=vecnorm(noise_MSETs05);
noisemse_Ts07=vecnorm(noise_MSETs07);
% 
% noise_MSEH= [MSEnoiseH3,MSEnoiseH5,MSEnoiseH10,MSEnoiseH15,MSEnoiseH25];
% y_original= [MSEnoiseH3,MSEnoiseH5,MSEnoiseH10,MSEnoiseH15,MSEnoiseH25];

% xaxisTs=[0.1,0.2,0.3,0.5,0.7];
% y_original= [eqmts01,eqmts02,eqmts03,eqmts05,eqmts07];
% 
% 
% noise_MSETs= [noisemse_Ts01,noisemse_Ts02,noisemse_Ts03,noisemse_Ts05,noisemse_Ts07];
% figure
% plot(xaxisTs,y_original,'b--','Linewidth', 1.5)
% hold on;
% plot(xaxisTs,noise_MSETs,'b','Linewidth', 1.5)
% xlim([0.1 0.7])
% % ylim([-5000 4.5*10^5])
% xlabel('$T_s$','Interpreter','latex','FontSize',14)
% ylabel('$MSE$','Interpreter','latex','FontSize',14)
% legend({'original signal', 'signal with AWGN ($SNR=25$)'}, 'Interpreter','latex','FontSize',12)
% 

% figure
% plot(xaxis,y_original,'b--','Linewidth', 1.5)
% hold on;
% plot(xaxis,noise_MSE,'b','Linewidth', 1.5)
% xlim([2 20])
% xlabel('$H$','Interpreter','latex','FontSize',14)
% ylabel('$MSE$','Interpreter','latex','FontSize',14)
% legend({'original signal', 'signal with AWGN ($SNR=15$)'}, 'Interpreter','latex','FontSize',12)
% 
% 
