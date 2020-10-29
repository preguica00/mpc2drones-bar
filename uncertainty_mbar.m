load ('uncertaintymbar_desvios5pcento.mat')
load('uncertaintymbar_desvios10pcento.mat')
load('uncertaintymbar_cost5pcento.mat')
load('uncertaintymbar_cost10pcento.mat')
load('uncertaintymbar_desvios20pcento.mat')
load('uncertaintymbar_cost20pcento.mat')
load('desviosTs02.mat')
load ('plotcostts02.mat')

figure
plot(Ts02,'b--', 'Linewidth', 1.5);
hold on;
plot(uncertaintymbar_desvios5pcento,'k', 'Linewidth', 1.5);
hold on;
plot(uncertaintymbar_desvios10pcento,'r', 'Linewidth', 1.5);
hold on;
plot(uncertaintymbar_desvios20pcento,'k', 'Linewidth', 1.5);
xlim([1 50])
legend({'0 \%','5 \%','10 \%','20 \%' }, 'Interpreter','latex','FontSize',14)
xlabel('Discrete Time','FontSize',14)
ylabel('$\sigma$','Interpreter','latex','FontSize',18)

figure
plot(plotcostts02,'b--', 'Linewidth', 1.5);
hold on;
plot(uncertaintymbar_cost5pcento,'k', 'Linewidth', 1.5);
hold on;
plot(uncertaintymbar_cost10pcento,'r', 'Linewidth', 1.5);
hold on;
plot(uncertaintymbar_cost20pcento,'k', 'Linewidth', 1.5);
xlim([1 50])
legend({'0 \%','5 \%','10 \%','20 \%' }, 'Interpreter','latex','FontSize',14)
xlabel('Discrete Time','FontSize',14)
ylabel('$J$','Interpreter','latex','FontSize',14)
