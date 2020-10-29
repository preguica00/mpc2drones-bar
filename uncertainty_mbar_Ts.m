
load ('plotcostts02.mat')
load ('plotcostts03.mat')
load ('plotcostts05.mat')
load ('plotcostts1.mat')
load ('plotcostts01.mat')
load ('plotcostts07.mat')
load ('plotcostts06.mat')
load ('plotcostts04.mat')
load ('eqm_Ts01.mat')
load ('eqm_Ts02.mat')
load ('eqm_Ts03.mat')
load ('eqm_Ts05.mat')
load ('eqm_Ts05.mat')
load ('eqm_Ts06.mat')
load ('eqm_Ts07.mat')
load ('eqm_Ts04.mat')

load ('trintauncertainty_costts01.mat')
load ('trintauncertainty_costts02.mat')
load ('trintauncertainty_costts03.mat')
load ('trintauncertainty_costts05.mat')
load ('trintauncertainty_costts07.mat')

load('trintauncertainty_MSEts01.mat')
load('trintauncertainty_MSEts02.mat')
load('trintauncertainty_MSEts03.mat')
load('trintauncertainty_MSEts05.mat')
load('trintauncertainty_MSEts07.mat')


load('cinquentauncertainty_MSEts01.mat')
load('cinquentauncertainty_MSEts02.mat')
load('cinquentauncertainty_MSEts03.mat')
load('cinquentauncertainty_MSEts05.mat')
load('cinquentauncertainty_MSEts07.mat')

load ('cinquentauncertainty_costts01.mat')
load ('cinquentauncertainty_costts02.mat')
load ('cinquentauncertainty_costts03.mat')
load ('cinquentauncertainty_costts05.mat')
load ('cinquentauncertainty_costts07.mat')
% 

utrintacost_ts01=vecnorm(trintauncertainty_costts01);
utrintacost_ts02=vecnorm(trintauncertainty_costts02);
utrintacost_ts03=vecnorm(trintauncertainty_costts03);
utrintacost_ts05=vecnorm(trintauncertainty_costts05);
utrintacost_ts07=vecnorm(trintauncertainty_costts07);


utrintaMSEts01=vecnorm(trintauncertainty_MSEts01);
utrintaMSEts02=vecnorm(trintauncertainty_MSEts02);
utrintaMSEts03=vecnorm(trintauncertainty_MSEts03);
utrintaMSEts05=vecnorm(trintauncertainty_MSEts05);
utrintaMSEts07=vecnorm(trintauncertainty_MSEts07);

ucinquentacost_ts01=vecnorm(cinquentauncertainty_costts01);
ucinquentacost_ts02=vecnorm(cinquentauncertainty_costts02);
ucinquentacost_ts03=vecnorm(cinquentauncertainty_costts03);
ucinquentacost_ts05=vecnorm(cinquentauncertainty_costts05);
ucinquentacost_ts07=vecnorm(cinquentauncertainty_costts07);


ucinquentaMSEts01=vecnorm(cinquentauncertainty_MSEts01);
ucinquentaMSEts02=vecnorm(cinquentauncertainty_MSEts02);
ucinquentaMSEts03=vecnorm(cinquentauncertainty_MSEts03);
ucinquentaMSEts05=vecnorm(cinquentauncertainty_MSEts05);
ucinquentaMSEts07=vecnorm(cinquentauncertainty_MSEts07);


costTs01=vecnorm(plotcostts01);
costTs02=vecnorm(plotcostts02);
costTs03=vecnorm(plotcostts03);
costTs05=vecnorm(plotcostts05);
costTs1=vecnorm(plotcostts1);
costTs07=vecnorm(plotcostts07);
costTs06=vecnorm(plotcostts06);
costTs04=vecnorm(plotcostts04);


eqm01=vecnorm(eqm_Ts01);
eqm02=vecnorm(eqm_Ts02);
eqm03=vecnorm(eqm_Ts03);
eqm05=vecnorm(eqm_Ts05);
eqm06=vecnorm(eqm_Ts06);
eqm07=vecnorm(eqm_Ts07);
eqm04=vecnorm(eqm_Ts04);

ucinquentaTs_cost= [ucinquentacost_ts01,ucinquentacost_ts02,ucinquentacost_ts03,ucinquentacost_ts05,ucinquentacost_ts07];
utrintaTs_cost= [utrintacost_ts01,utrintacost_ts02,utrintacost_ts03,utrintacost_ts05,utrintacost_ts07];
y_cost= [costTs01,costTs02,costTs03,costTs05,costTs07];


ucinquentaTs_MSE= [ucinquentaMSEts01,ucinquentaMSEts02,ucinquentaMSEts03,ucinquentaMSEts05,ucinquentaMSEts07];
utrintaTs_MSE= [utrintaMSEts01,utrintaMSEts02,utrintaMSEts03,utrintaMSEts05,utrintaMSEts07];
y_MSE= [eqm01,eqm02,eqm03,eqm05,eqm07];


xaxisTs=[0.1,0.2,0.3,0.5,0.7];

figure
plot(xaxisTs,y_cost,'r--','Linewidth', 1.5)
hold on;
plot(xaxisTs,utrintaTs_cost,'b','Linewidth', 1.5)
hold on;
plot(xaxisTs,ucinquentaTs_cost,'k','Linewidth', 1.5)
xlim([0.1 0.7])
xlabel('$T_s$','Interpreter','latex','FontSize',14)
ylabel('$J$','Interpreter','latex','FontSize',14)
legend({'0\%','30\%','50\%'}, 'Interpreter','latex','FontSize',12)


xaxisTs=[0.1,0.2,0.3,0.5,0.7];

figure
plot(xaxisTs,y_MSE,'r--','Linewidth', 1.5)
hold on;
plot(xaxisTs,utrintaTs_MSE,'b','Linewidth', 1.5)
hold on;
plot(xaxisTs,ucinquentaTs_MSE,'k','Linewidth', 1.5)
xlim([0.1 0.7])
xlabel('$T_s$','Interpreter','latex','FontSize',14)
ylabel('$MSE$','Interpreter','latex','FontSize',14)
legend({'0\%','30\%','50\%'}, 'Interpreter','latex','FontSize',12)