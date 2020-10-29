% load ('dist_cost_lambdab1.mat')
load ('dist_cost_lambdab20.mat')
load ('dist_cost_lambdab30.mat')
load ('dist_cost_lambdab50.mat')
load ('dist_cost_lambdab70.mat')
load ('dist_cost_lambdab90.mat')


% load ('dist_MSE_lambdab1.mat')
% load ('dist_MSE_lambdab20.mat')
load ('dist_MSE_lambdab30.mat')
load ('dist_MSE_lambdab50.mat')
load ('dist_MSE_lambdab70.mat')
load ('dist_MSE_lambdab90.mat')

% dcostlambda1=vecnorm(dist_cost_lambdab1);
% dcostlambda20=vecnorm(dist_cost_lambdab20);
dcostlambda30=vecnorm(dist_cost_lambdab30);
dcostlambda50=vecnorm(dist_cost_lambdab50);
dcostlambda70=vecnorm(dist_cost_lambdab70);
dcostlambda90=vecnorm(dist_cost_lambdab90);
% 
% dMSElambda1=vecnorm(dist_MSE_lambdab1);
% dMSElambda20=vecnorm(dist_MSE_lambdab20);
dMSElambda30=vecnorm(dist_MSE_lambdab30);
dMSElambda50=vecnorm(dist_MSE_lambdab50);
dMSElambda70=vecnorm(dist_MSE_lambdab70);
dMSElambda90=vecnorm(dist_MSE_lambdab90);

lambdab_cost= [dcostlambda30,dcostlambda30,dcostlambda50,dcostlambda70,dcostlambda90];

lambdab_mse= [dMSElambda30,dMSElambda50,dMSElambda70,dMSElambda90];

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
