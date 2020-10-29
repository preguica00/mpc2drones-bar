load ('cost_qdiff1.mat')
load ('cost_qdiff20.mat')
load ('cost_qdiff28.mat')
load ('cost_qdiff50.mat')


load ('MSE_qdiff1.mat')
load ('MSE_qdiff20.mat')
load ('MSE_qdiff28.mat')
load ('MSE_qdiff50.mat')

costqdiff1=vecnorm(cost_qdiff1);
costqdiff20=vecnorm(cost_qdiff20);
costqdiff28=vecnorm(cost_qdiff28);
costqdiff50=vecnorm(cost_qdiff50);

MSEqdiff1=vecnorm(MSE_qdiff1);
MSEqdiff20=vecnorm(MSE_qdiff20);
MSEqdiff28=vecnorm(MSE_qdiff28);
MSEqdiff50=vecnorm(MSE_qdiff50);

qdiff_cost= [costqdiff1,costqdiff20,costqdiff28,costqdiff50];

qdiff_mse= [MSEqdiff1,MSEqdiff28,MSEqdiff50];

xaxis_qdiff=[1,20,28,50];
xaxis_qdiff2=[1,28,50];

figure
plot(xaxis_qdiff,qdiff_cost,'r','Linewidth', 1.5)
xlabel('$\beta$','Interpreter','latex','FontSize',14)
ylabel('$J$','Interpreter','latex','FontSize',14)
xlim([1 50])

figure
plot(xaxis_qdiff2,qdiff_mse,'b','Linewidth', 1.5)
xlim([1 50])
xlabel('$\beta$','Interpreter','latex','FontSize',14)
ylabel('$MSE$','Interpreter','latex','FontSize',14)
% ylim([0 32728])
% legend({'original signal', 'signal with AWGN ($SNR=10$)'}, 'Interpreter','latex','FontSize',12)
