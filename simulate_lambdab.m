load ('cost_lambdab1.mat')
load ('cost_lambdab20.mat')
load ('cost_lambdab30.mat')
load ('cost_lambdab50.mat')
load ('cost_lambdab70.mat')
load ('cost_lambdab90.mat')


load ('MSE_lambdab1.mat')
load ('MSE_lambdab20.mat')
load ('MSE_lambdab30.mat')
load ('MSE_lambdab50.mat')
load ('MSE_lambdab70.mat')
load ('MSE_lambdab90.mat')

costlambda1=vecnorm(cost_lambdab1);
costlambda20=vecnorm(cost_lambdab20);
costlambda30=vecnorm(cost_lambdab30);
costlambda50=vecnorm(cost_lambdab50);
costlambda70=vecnorm(cost_lambdab70);
costlambda90=vecnorm(cost_lambdab90);

MSElambda1=vecnorm(MSE_lambdab1);
MSElambda20=vecnorm(MSE_lambdab20);
MSElambda30=vecnorm(MSE_lambdab30);
MSElambda50=vecnorm(MSE_lambdab50);
MSElambda70=vecnorm(MSE_lambdab70);
MSElambda90=vecnorm(MSE_lambdab90);

lambdab_cost= [costlambda30,costlambda50,costlambda70,costlambda90];

lambdab_mse= [MSElambda30,MSElambda50,MSElambda70,MSElambda90];

xaxis_lambdab=[30,50,70,90];
figure
plot(xaxis_lambdab,lambdab_cost,'r','Linewidth', 1.5)
xlabel('$\lambda_b$','Interpreter','latex','FontSize',14)
ylabel('$J$','Interpreter','latex','FontSize',14)
xlim([30 90])

figure
plot(xaxis_lambdab,lambdab_mse,'b','Linewidth', 1.5)
xlim([30 90])
xlabel('$\lambda_b$','Interpreter','latex','FontSize',14)
ylabel('$MSE$','Interpreter','latex','FontSize',14)
% ylim([0 32730])
% legend({'original signal', 'signal with AWGN ($SNR=10$)'}, 'Interpreter','latex','FontSize',12)
