load ('cost_lambda1_1.mat')
load ('cost_lambda1_3.mat')
load ('cost_lambda1_5.mat')
load ('cost_lambda1_8.mat')


load ('MSE_lambda1_1.mat')
load ('MSE_lambda1_3.mat')
load ('MSE_lambda1_5.mat')
load ('MSE_lambda1_8.mat')

costlambda_1=vecnorm(cost_lambda1_1);
costlambda_3=vecnorm(cost_lambda1_3);
costlambda_5=vecnorm(cost_lambda1_5);
costlambda_8=vecnorm(cost_lambda1_8);

MSElambda_1=vecnorm(MSE_lambda1_1);
MSElambda_3=vecnorm(MSE_lambda1_3);
MSElambda_5=vecnorm(MSE_lambda1_5);
MSElambda_8=vecnorm(MSE_lambda1_8);

lambda1_cost= [costlambda_1,costlambda_3,costlambda_5,costlambda_8];

lambda1_mse= [MSElambda_1,MSElambda_3,MSElambda_5,MSElambda_8];

xaxis_lambda1=[1,3,5,8];
figure
plot(xaxis_lambda1,lambda1_cost,'r','Linewidth', 1.5)
xlabel('$\lambda_1$','Interpreter','latex','FontSize',14)
ylabel('$J$','Interpreter','latex','FontSize',14)
xlim([1 8])

figure
plot(xaxis_lambda1,lambda1_mse,'b','Linewidth', 1.5)
xlim([1 8])
xlabel('$\lambda_1$','Interpreter','latex','FontSize',14)
ylabel('$MSE$','Interpreter','latex','FontSize',14)
% ylim([0 32730])
% legend({'original signal', 'signal with AWGN ($SNR=10$)'}, 'Interpreter','latex','FontSize',12)
