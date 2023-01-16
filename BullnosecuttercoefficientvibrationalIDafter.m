clear;
clc;
close all;
%%不同实验组的结果 显示在一个图内
[K1]=xlsread('BCCC.xlsx',1);
[K2]=xlsread('BCCC.xlsx',2);
[K3]=xlsread('BCCC.xlsx',3);
[K4]=xlsread('BCCC.xlsx',4);
[K5]=xlsread('BCCC.xlsx',5);
[K6]=xlsread('BCCC.xlsx',6);

ap=[0.2,0.4,0.6,0.8,1.0,1.2];
figure(1)
subplot(2,2,1)
AV1=polyfit(ap,[mean(K1(1,:)),mean(K2(1,:)),mean(K3(1,:)),mean(K4(1,:)),mean(K5(1,:)),mean(K6(1,:))],3);
Av1=polyval(AV1,0.2:0.01:1.2);
plot(0.2:0.01:1.2,Av1,'r-','Markersize',7,'Markerface','white','linewidth',3.0);
hold on;
grid on;
xlim([0 1.4]);
set(gca,'FontName','Times New Roman', 'FontSize', 24)
set(get(gca,'XLabel'),'FontName','Times New Roman','Fontsize',24)
set(get(gca,'YLabel'),'FontName','Times New Roman','Fontsize',24)
legend('Average value')
xlabel('a_p')
ylabel('K_t_c(N/mm^2)')

subplot(2,2,2)
AV2=polyfit(ap,[mean(K1(3,:)),mean(K2(3,:)),mean(K3(3,:)),mean(K4(3,:)),mean(K5(3,:)),mean(K6(3,:))],3);
Av2=polyval(AV2,0.2:0.01:1.2);
plot(0.2:0.01:1.2,Av2,'r-','Markersize',7,'Markerface','white','linewidth',3.0);
hold on;
grid on;
xlim([0 1.4]);
set(gca,'FontName','Times New Roman', 'FontSize', 24)
set(get(gca,'XLabel'),'FontName','Times New Roman','Fontsize',24)
set(get(gca,'YLabel'),'FontName','Times New Roman','Fontsize',24)
legend('Average value')
xlabel('a_p')
ylabel('K_r_c(N/mm^2)')

subplot(2,2,3)
AV3=polyfit(ap,[mean(K1(2,:)),mean(K2(2,:)),mean(K3(2,:)),mean(K4(2,:)),mean(K5(2,:)),mean(K6(2,:))],3);
Av3=polyval(AV3,0.2:0.01:1.2);
plot(0.2:0.01:1.2,Av3,'r-','Markersize',7,'Markerface','white','linewidth',3.0);
hold on;
grid on;
xlim([0 1.4]);
set(gca,'FontName','Times New Roman', 'FontSize', 24)
set(get(gca,'XLabel'),'FontName','Times New Roman','Fontsize',24)
set(get(gca,'YLabel'),'FontName','Times New Roman','Fontsize',24)
legend('Average value')
xlabel('a_p')
ylabel('K_t_e(N/mm)')

subplot(2,2,4)
AV4=polyfit(ap,[mean(K1(4,:)),mean(K2(4,:)),mean(K3(4,:)),mean(K4(4,:)),mean(K5(4,:)),mean(K6(4,:))],3);
Av4=polyval(AV4,0.2:0.01:1.2);
plot(0.2:0.01:1.2,Av4,'r-','Markersize',7,'Markerface','white','linewidth',3.0);
hold on;
grid on;
xlim([0 1.4]);
set(gca,'FontName','Times New Roman', 'FontSize', 24)
set(get(gca,'XLabel'),'FontName','Times New Roman','Fontsize',24)
set(get(gca,'YLabel'),'FontName','Times New Roman','Fontsize',24)
legend('Average value')
xlabel('a_p')
ylabel('K_r_e(N/mm)')

figure(1);
subplot(2,2,1)
[m,n]=size(K1);
A=zeros(1,n);A=0.2;
plot(A,K1(1,:),'b+','Markersize',7,'Markerface','white','linewidth',3.0);
hold on;
subplot(2,2,2)
plot(A,K1(3,:),'b+','Markersize',7,'Markerface','white','linewidth',3.0);
hold on;
subplot(2,2,3)
plot(A,K1(2,:),'b+','Markersize',7,'Markerface','white','linewidth',3.0);
hold on;
subplot(2,2,4)
plot(A,K1(4,:),'b+','Markersize',7,'Markerface','white','linewidth',3.0);
hold on;


figure(1)
subplot(2,2,1)
[m,n]=size(K2);
A=zeros(1,n);A=0.4;
plot(A,K2(1,:),'b+','Markersize',7,'Markerface','white','linewidth',3.0);
hold on;
subplot(2,2,2)
plot(A,K2(3,:),'b+','Markersize',7,'Markerface','white','linewidth',3.0);
hold on;
subplot(2,2,3)
plot(A,K2(2,:),'b+','Markersize',7,'Markerface','white','linewidth',3.0);
hold on;
subplot(2,2,4)
plot(A,K2(4,:),'b+','Markersize',7,'Markerface','white','linewidth',3.0);
hold on;

figure(1)
[m,n]=size(K3);
A=zeros(1,n);A=0.6;
subplot(2,2,1)
plot(A,K3(1,:),'b+','Markersize',7,'Markerface','white','linewidth',3.0);
hold on;
subplot(2,2,2)
plot(A,K3(3,:),'b+','Markersize',7,'Markerface','white','linewidth',3.0);
hold on;
subplot(2,2,3)
plot(A,K3(2,:),'b+','Markersize',7,'Markerface','white','linewidth',3.0);
hold on;
subplot(2,2,4)
plot(A,K3(4,:),'b+','Markersize',7,'Markerface','white','linewidth',3.0);
hold on;

[m,n]=size(K4);
A=zeros(1,n);A=0.8;
figure(1)
subplot(2,2,1)
plot(A,K4(1,:),'b+','Markersize',7,'Markerface','white','linewidth',3.0);
hold on;
subplot(2,2,2)
plot(A,K4(3,:),'b+','Markersize',7,'Markerface','white','linewidth',3.0);
hold on;
subplot(2,2,3)
plot(A,K4(2,:),'b+','Markersize',7,'Markerface','white','linewidth',3.0);
hold on;
subplot(2,2,4)
plot(A,K4(4,:),'b+','Markersize',7,'Markerface','white','linewidth',3.0);
hold on;

[m,n]=size(K5);
A=zeros(1,n);A=1.0;
figure(1)
subplot(2,2,1)
plot(A,K5(1,:),'b+','Markersize',7,'Markerface','white','linewidth',3.0);
hold on;
subplot(2,2,2)
plot(A,K5(3,:),'b+','Markersize',7,'Markerface','white','linewidth',3.0);
hold on;
subplot(2,2,3)
plot(A,K5(2,:),'b+','Markersize',7,'Markerface','white','linewidth',3.0);
hold on;
subplot(2,2,4)
plot(A,K5(4,:),'b+','Markersize',7,'Markerface','white','linewidth',3.0);
hold on;

[m,n]=size(K6);
A=zeros(1,n);A=1.2;
figure(1)
subplot(2,2,1)
plot(A,K6(1,:),'b+','Markersize',7,'Markerface','white','linewidth',3.0);
hold on;
subplot(2,2,2)
plot(A,K6(3,:),'b+','Markersize',7,'Markerface','white','linewidth',3.0);
hold on;
subplot(2,2,3)
plot(A,K6(2,:),'b+','Markersize',7,'Markerface','white','linewidth',3.0);
hold on;
subplot(2,2,4)
plot(A,K6(4,:),'b+','Markersize',7,'Markerface','white','linewidth',3.0);
hold on;

MEAN(1,1)=mean(K1(1,:));MEAN(1,2)=mean(K2(1,:));MEAN(1,3)=mean(K3(1,:));MEAN(1,4)=mean(K4(1,:));MEAN(1,5)=mean(K5(1,:));MEAN(1,6)=mean(K6(1,:));
MEAN(2,1)=mean(K1(2,:));MEAN(2,2)=mean(K2(2,:));MEAN(2,3)=mean(K3(2,:));MEAN(2,4)=mean(K4(2,:));MEAN(2,5)=mean(K5(2,:));MEAN(2,6)=mean(K6(2,:));
MEAN(3,1)=mean(K1(3,:));MEAN(3,2)=mean(K2(3,:));MEAN(3,3)=mean(K3(3,:));MEAN(3,4)=mean(K4(3,:));MEAN(3,5)=mean(K5(3,:));MEAN(3,6)=mean(K6(3,:));
MEAN(4,1)=mean(K1(4,:));MEAN(4,2)=mean(K2(4,:));MEAN(4,3)=mean(K3(4,:));MEAN(4,4)=mean(K4(4,:));MEAN(4,5)=mean(K5(4,:));MEAN(4,6)=mean(K6(4,:));

SD(1,1)=std(K1(1,:));SD(1,2)=std(K2(1,:));SD(1,3)=std(K3(1,:));SD(1,4)=std(K4(1,:));SD(1,5)=std(K5(1,:));SD(1,6)=std(K6(1,:));
SD(2,1)=std(K1(2,:));SD(2,2)=std(K2(2,:));SD(2,3)=std(K3(2,:));SD(2,4)=std(K4(2,:));SD(2,5)=std(K5(2,:));SD(2,6)=std(K6(2,:));
SD(3,1)=std(K1(3,:));SD(3,2)=std(K2(3,:));SD(3,3)=std(K3(3,:));SD(3,4)=std(K4(3,:));SD(3,5)=std(K5(3,:));SD(3,6)=std(K6(3,:));
SD(4,1)=std(K1(4,:));SD(4,2)=std(K2(4,:));SD(4,3)=std(K3(4,:));SD(4,4)=std(K4(4,:));SD(4,5)=std(K5(4,:));SD(4,6)=std(K6(4,:));

AV4=polyfit(ap(2:6),[mean(K2(4,:)),mean(K3(4,:)),mean(K4(4,:)),mean(K5(4,:)),mean(K6(4,:))],3);
AV3=polyfit(ap(2:6),[mean(K2(2,:)),mean(K3(2,:)),mean(K4(2,:)),mean(K5(2,:)),mean(K6(2,:))],3);
AV2=polyfit(ap(2:6),[mean(K2(3,:)),mean(K3(3,:)),mean(K4(3,:)),mean(K5(3,:)),mean(K6(3,:))],3);
AV1=polyfit(ap(2:6),[mean(K2(1,:)),mean(K3(1,:)),mean(K4(1,:)),mean(K5(1,:)),mean(K6(1,:))],3);