load ('cinquentauncertainty_costH2.mat')
load ('cinquentauncertainty_costH3.mat')
load ('cinquentauncertainty_costH5.mat')
load ('cinquentauncertainty_costH10.mat')
load ('cinquentauncertainty_costH15.mat')
load ('cinquentauncertainty_costH20.mat')
load('cinquentauncertainty_MSEH2.mat')
load('cinquentauncertainty_MSEH3.mat')
load('cinquentauncertainty_MSEH5.mat')
load('cinquentauncertainty_MSEH10.mat')
load('cinquentauncertainty_MSEH15.mat')
load('cinquentauncertainty_MSEH20.mat')

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

load('vinteuncertainty_MSEH2.mat')
load('vinteuncertainty_MSEH3.mat')
load('vinteuncertainty_MSEH5.mat')
load('vinteuncertainty_MSEH10.mat')
load('vinteuncertainty_MSEH15.mat')
load('vinteuncertainty_MSEH20.mat')

load ('vinteuncertainty_costH2.mat')
load ('vinteuncertainty_costH3.mat')
load ('vinteuncertainty_costH5.mat')
load ('vinteuncertainty_costH10.mat')
load ('vinteuncertainty_costH15.mat')
load ('vinteuncertainty_costH20.mat')
% 
load('trintauncertainty_MSEH2.mat')
load('trintauncertainty_MSEH3.mat')
load('trintauncertainty_MSEH5.mat')
load('trintauncertainty_MSEH10.mat')
load('trintauncertainty_MSEH15.mat')
load('trintauncertainty_MSEH20.mat')

load ('trintauncertainty_costH2.mat')
load ('trintauncertainty_costH3.mat')
load ('trintauncertainty_costH5.mat')
load ('trintauncertainty_costH10.mat')
load ('trintauncertainty_costH15.mat')
load ('trintauncertainty_costH20.mat')


ucinquentacost_H2=vecnorm(cinquentauncertainty_costH2);
ucinquentacost_H3=vecnorm(cinquentauncertainty_costH3);
ucinquentacost_H5=vecnorm(cinquentauncertainty_costH5);
ucinquentacost_H10=vecnorm(cinquentauncertainty_costH10);
ucinquentacost_H15=vecnorm(cinquentauncertainty_costH15);
ucinquentacost_H20=vecnorm(cinquentauncertainty_costH20);


ucinquentaMSEH2=vecnorm(cinquentauncertainty_MSEH2);
ucinquentaMSEH3=vecnorm(cinquentauncertainty_MSEH3);
ucinquentaMSEH5=vecnorm(cinquentauncertainty_MSEH5);
ucinquentaMSEH10=vecnorm(cinquentauncertainty_MSEH10);
ucinquentaMSEH15=vecnorm(cinquentauncertainty_MSEH15);
ucinquentaMSEH20=vecnorm(cinquentauncertainty_MSEH20);

uvinteMSE_H2=vecnorm(vinteuncertainty_MSEH2);
uvinteMSE_H3=vecnorm(vinteuncertainty_MSEH3);
uvinteMSE_H5=vecnorm(vinteuncertainty_MSEH5);
uvinteMSE_H10=vecnorm(vinteuncertainty_MSEH10);
uvinteMSE_H15=vecnorm(vinteuncertainty_MSEH15);
uvinteMSE_H20=vecnorm(vinteuncertainty_MSEH20);


uvintecostH2=vecnorm(vinteuncertainty_costH2);
uvintecostH3=vecnorm(vinteuncertainty_costH3);
uvintecostH5=vecnorm(vinteuncertainty_costH5);
uvintecostH10=vecnorm(vinteuncertainty_costH10);
uvintecostH15=vecnorm(vinteuncertainty_costH15);
uvintecostH20=vecnorm(vinteuncertainty_costH20);

utrintaMSE_H2=vecnorm(trintauncertainty_MSEH2);
utrintaMSE_H3=vecnorm(trintauncertainty_MSEH3);
utrintaMSE_H5=vecnorm(trintauncertainty_MSEH5);
utrintaMSE_H10=vecnorm(trintauncertainty_MSEH10);
utrintaMSE_H15=vecnorm(trintauncertainty_MSEH15);
utrintaMSE_H20=vecnorm(trintauncertainty_MSEH20);


utrintacostH2=vecnorm(trintauncertainty_costH2);
utrintacostH3=vecnorm(trintauncertainty_costH3);
utrintacostH5=vecnorm(trintauncertainty_costH5);
utrintacostH10=vecnorm(trintauncertainty_costH10);
utrintacostH15=vecnorm(trintauncertainty_costH15);
utrintacostH20=vecnorm(trintauncertainty_costH20);


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

ucinquentaH_cost= [ucinquentacost_H2,ucinquentacost_H3,ucinquentacost_H5,ucinquentacost_H10,ucinquentacost_H15,ucinquentacost_H20];
uvinteH_cost= [uvintecostH2,uvintecostH3,uvintecostH5,uvintecostH10,uvintecostH15,uvintecostH20];
utrintaH_cost= [utrintacostH2,utrintacostH3,utrintacostH5,utrintacostH10,utrintacostH15,utrintacostH20];
cost_original= [cost_H2,cost_H3,cost_H5,cost_H10,cost_H15, cost_H20];

ucinquentaH_MSE= [ucinquentaMSEH2,ucinquentaMSEH3,ucinquentaMSEH5,ucinquentaMSEH10,ucinquentaMSEH15,ucinquentaMSEH20];
% uvinteH_MSE= [uvinteMSEH2,uvinteMSEH3,uvinteMSEH5,uvinteMSEH10,uvinteMSEH15,uvinteMSEH20];
utrintaH_MSE= [utrintaMSE_H2,utrintaMSE_H3,utrintaMSE_H5,utrintaMSE_H10,utrintaMSE_H15,utrintaMSE_H20];
MSE_original= [MSEH2,MSEH3,MSEH5,MSEH10,MSEH15, MSEH20];


xaxisH=[2,3,5,10,15,20];

figure
plot(xaxisH,cost_original,'r--','Linewidth', 1.5)
hold on;
% plot(xaxis_H,ucinquentaH_cost,'k','Linewidth', 1.5)
% hold on;
plot(xaxis_H,utrintaH_cost,'b','Linewidth', 1.5)
hold on;
plot(xaxis_H,ucinquentaH_cost,'k','Linewidth', 1.5)
xlim([2 20])
xlabel('$H$','Interpreter','latex','FontSize',14)
ylabel('$J$','Interpreter','latex','FontSize',14)
legend({'0\%','30\%','50\%'}, 'Interpreter','latex','FontSize',12)

xaxisH=[2,3,5,10,15,20];

figure
plot(xaxisH,MSE_original,'r--','Linewidth', 1.5)
hold on;
plot(xaxis_H,utrintaH_MSE,'b','Linewidth', 1.5)
hold on;
plot(xaxis_H,ucinquentaH_MSE,'k','Linewidth', 1.5)
xlim([2 20])
xlabel('$H$','Interpreter','latex','FontSize',14)
ylabel('$MSE$','Interpreter','latex','FontSize',14)
legend({'0\%','30\%','50\%'}, 'Interpreter','latex','FontSize',12)
