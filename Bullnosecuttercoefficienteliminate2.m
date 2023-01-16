%%消除零漂趋势项
close all;
clear;
clc;
%%模型参数消除零漂
% F1=xlsread('MD01.xlsx');
% [m,n]=size(F1);
% F=zeros(m,1);%%测力仪x,y正方向和模型的下x,y正方向不一致
% F=F1(:,2);
% F1(:,2)=F1(:,3);
% F1(:,3)=F;
% yx=polyfit([F1(1:1000,1);F1(m-999:m,1)],[F1(1:1000,2);F1(m-999:m,2)],1);
% y1=polyval(yx,F1(:,1));
% F1(:,2)=F1(:,2)-y1;
% yy=polyfit([F1(1:1000,1);F1(m-999:m,1)],[F1(1:1000,3);F1(m-999:m,3)],1);
% y2=polyval(yy,F1(:,1));
% F1(:,3)=F1(:,3)-y2;
% yz=polyfit([F1(1:1000,1);F1(m-999:m,1)],[F1(1:1000,4);F1(m-999:m,4)],1);
% y3=polyval(yz,F1(:,1));
% F1(:,4)=F1(:,4)-y3;
% figure(1)
% subplot(3,1,1)
% plot(F1(:,1),F1(:,2),'b-','Markersize',7,'Markerface','white','linewidth',1.0);
% hold on;
% xlabel('time(s)')
% ylabel('F_x(N)')
% set(gca, 'FontSize', 20)
% set(get(gca,'XLabel'),'Fontsize',20)
% set(get(gca,'YLabel'),'Fontsize',20)
% subplot(3,1,2)
% plot(F1(:,1),F1(:,3),'r-','Markersize',7,'Markerface','white','linewidth',1.0);
% hold on;
% xlabel('time(s)')
% ylabel('F_y(N)')
% set(gca, 'FontSize', 20)
% set(get(gca,'XLabel'),'Fontsize',20)
% set(get(gca,'YLabel'),'Fontsize',20)
% subplot(3,1,3)
% plot(F1(:,1),F1(:,4),'g-','Markersize',7,'Markerface','white','linewidth',1.0);
% grid on;
% hold on;
% xlabel('time(s)')
% ylabel('F_z(N)')
% set(gca, 'FontSize', 20)
% set(get(gca,'XLabel'),'Fontsize',20)
% set(get(gca,'YLabel'),'Fontsize',20)
% 
% F2=xlsread('MD02.xlsx');
% [m,n]=size(F2);
% F=zeros(m,1);%%测力仪x,y正方向和模型的下x,y正方向不一致
% F=F2(:,2);
% F2(:,2)=F2(:,3);
% F2(:,3)=F;
% yx=polyfit([F2(1:1000,1);F2(m-999:m,1)],[F2(1:1000,2);F2(m-999:m,2)],1);
% y1=polyval(yx,F2(:,1));
% F2(:,2)=F2(:,2)-y1;
% yy=polyfit([F2(1:1000,1);F2(m-999:m,1)],[F2(1:1000,3);F2(m-999:m,3)],1);
% y2=polyval(yy,F2(:,1));
% F2(:,3)=F2(:,3)-y2;
% yz=polyfit([F2(1:1000,1);F2(m-999:m,1)],[F2(1:1000,4);F2(m-999:m,4)],1);
% y3=polyval(yz,F2(:,1));
% F2(:,4)=F2(:,4)-y3;
% figure(2)
% subplot(3,1,1)
% plot(F2(:,1),F2(:,2),'b-','Markersize',7,'Markerface','white','linewidth',1.0);
% hold on;
% xlabel('time(s)')
% ylabel('F_x(N)')
% set(gca, 'FontSize', 20)
% set(get(gca,'XLabel'),'Fontsize',20)
% set(get(gca,'YLabel'),'Fontsize',20)
% subplot(3,1,2)
% plot(F2(:,1),F2(:,3),'r-','Markersize',7,'Markerface','white','linewidth',1.0);
% hold on;
% xlabel('time(s)')
% ylabel('F_y(N)')
% set(gca, 'FontSize', 20)
% set(get(gca,'XLabel'),'Fontsize',20)
% set(get(gca,'YLabel'),'Fontsize',20)
% subplot(3,1,3)
% plot(F2(:,1),F2(:,4),'g-','Markersize',7,'Markerface','white','linewidth',1.0);
% grid on;
% hold on;
% xlabel('time(s)')
% ylabel('F_z(N)')
% set(gca, 'FontSize', 20)
% set(get(gca,'XLabel'),'Fontsize',20)
% set(get(gca,'YLabel'),'Fontsize',20)
% 
% F3=xlsread('MD03.xlsx');
% [m,n]=size(F3);
% F=zeros(m,1);%%测力仪x,y正方向和模型的下x,y正方向不一致
% F=F3(:,2);
% F3(:,2)=F3(:,3);
% F3(:,3)=F;
% yx=polyfit([F3(1:1000,1);F3(m-999:m,1)],[F3(1:1000,2);F3(m-999:m,2)],1);
% y1=polyval(yx,F3(:,1));
% F3(:,2)=F3(:,2)-y1;
% yy=polyfit([F3(1:1000,1);F3(m-999:m,1)],[F3(1:1000,3);F3(m-999:m,3)],1);
% y2=polyval(yy,F3(:,1));
% F3(:,3)=F3(:,3)-y2;
% yz=polyfit([F3(1:1000,1);F3(m-999:m,1)],[F3(1:1000,4);F3(m-999:m,4)],1);
% y3=polyval(yz,F3(:,1));
% F3(:,4)=F3(:,4)-y3;
% figure(3)
% subplot(3,1,1)
% plot(F3(:,1),F3(:,2),'b-','Markersize',7,'Markerface','white','linewidth',1.0);
% hold on;
% xlabel('time(s)')
% ylabel('F_x(N)')
% set(gca, 'FontSize', 20)
% set(get(gca,'XLabel'),'Fontsize',20)
% set(get(gca,'YLabel'),'Fontsize',20)
% subplot(3,1,2)
% plot(F3(:,1),F3(:,3),'r-','Markersize',7,'Markerface','white','linewidth',1.0);
% hold on;
% xlabel('time(s)')
% ylabel('F_y(N)')
% set(gca, 'FontSize', 20)
% set(get(gca,'XLabel'),'Fontsize',20)
% set(get(gca,'YLabel'),'Fontsize',20)
% subplot(3,1,3)
% plot(F3(:,1),F3(:,4),'g-','Markersize',7,'Markerface','white','linewidth',1.0);
% grid on;
% hold on;
% xlabel('time(s)')
% ylabel('F_z(N)')
% set(gca, 'FontSize', 20)
% set(get(gca,'XLabel'),'Fontsize',20)
% set(get(gca,'YLabel'),'Fontsize',20)
% 
% F4=xlsread('MD04.xlsx');
% [m,n]=size(F4);
% F=zeros(m,1);%%测力仪x,y正方向和模型的下x,y正方向不一致
% F=F4(:,2);
% F4(:,2)=F4(:,3);
% F4(:,3)=F;
% yx=polyfit([F4(1:1000,1);F4(m-999:m,1)],[F4(1:1000,2);F4(m-999:m,2)],1);
% y1=polyval(yx,F4(:,1));
% F4(:,2)=F4(:,2)-y1;
% yy=polyfit([F4(1:1000,1);F4(m-999:m,1)],[F4(1:1000,3);F4(m-999:m,3)],1);
% y2=polyval(yy,F4(:,1));
% F4(:,3)=F4(:,3)-y2;
% yz=polyfit([F4(1:1000,1);F4(m-999:m,1)],[F4(1:1000,4);F4(m-999:m,4)],1);
% y3=polyval(yz,F4(:,1));
% F4(:,4)=F4(:,4)-y3;
% figure(4)
% subplot(3,1,1)
% plot(F4(:,1),F4(:,2),'b-','Markersize',7,'Markerface','white','linewidth',1.0);
% hold on;
% xlabel('time(s)')
% ylabel('F_x(N)')
% set(gca, 'FontSize', 20)
% set(get(gca,'XLabel'),'Fontsize',20)
% set(get(gca,'YLabel'),'Fontsize',20)
% subplot(3,1,2)
% plot(F4(:,1),F4(:,3),'r-','Markersize',7,'Markerface','white','linewidth',1.0);
% hold on;
% xlabel('time(s)')
% ylabel('F_y(N)')
% set(gca, 'FontSize', 20)
% set(get(gca,'XLabel'),'Fontsize',20)
% set(get(gca,'YLabel'),'Fontsize',20)
% subplot(3,1,3)
% plot(F4(:,1),F4(:,4),'g-','Markersize',7,'Markerface','white','linewidth',1.0);
% grid on;
% hold on;
% xlabel('time(s)')
% ylabel('F_z(N)')
% set(gca, 'FontSize', 20)
% set(get(gca,'XLabel'),'Fontsize',20)
% set(get(gca,'YLabel'),'Fontsize',20)
% 
% F5=xlsread('MD05.xlsx');
% [m,n]=size(F5);
% F=zeros(m,1);%%测力仪x,y正方向和模型的下x,y正方向不一致
% F=F5(:,2);
% F5(:,2)=F5(:,3);
% F5(:,3)=F;
% yx=polyfit([F5(1:1000,1);F5(m-999:m,1)],[F5(1:1000,2);F5(m-999:m,2)],1);
% y1=polyval(yx,F5(:,1));
% F5(:,2)=F5(:,2)-y1;
% yy=polyfit([F5(1:1000,1);F5(m-999:m,1)],[F5(1:1000,3);F5(m-999:m,3)],1);
% y2=polyval(yy,F5(:,1));
% F5(:,3)=F5(:,3)-y2;
% yz=polyfit([F5(1:1000,1);F5(m-999:m,1)],[F5(1:1000,4);F5(m-999:m,4)],1);
% y3=polyval(yz,F5(:,1));
% F5(:,4)=F5(:,4)-y3;
% figure(5)
% subplot(3,1,1)
% plot(F5(:,1),F5(:,2),'b-','Markersize',7,'Markerface','white','linewidth',1.0);
% hold on;
% xlabel('time(s)')
% ylabel('F_x(N)')
% set(gca, 'FontSize', 20)
% set(get(gca,'XLabel'),'Fontsize',20)
% set(get(gca,'YLabel'),'Fontsize',20)
% subplot(3,1,2)
% plot(F5(:,1),F5(:,3),'r-','Markersize',7,'Markerface','white','linewidth',1.0);
% hold on;
% xlabel('time(s)')
% ylabel('F_y(N)')
% set(gca, 'FontSize', 20)
% set(get(gca,'XLabel'),'Fontsize',20)
% set(get(gca,'YLabel'),'Fontsize',20)
% subplot(3,1,3)
% plot(F5(:,1),F5(:,4),'g-','Markersize',7,'Markerface','white','linewidth',1.0);
% grid on;
% hold on;
% xlabel('time(s)')
% ylabel('F_z(N)')
% set(gca, 'FontSize', 20)
% set(get(gca,'XLabel'),'Fontsize',20)
% set(get(gca,'YLabel'),'Fontsize',20)
% 
% xlswrite('M1.xlsx',F1);
% xlswrite('M2.xlsx',F2);
% xlswrite('M3.xlsx',F3);
% xlswrite('M4.xlsx',F4);
% xlswrite('M5.xlsx',F5);

%%辨识参数消除零漂
F1=xlsread('ID02.xlsx');
[m,n]=size(F1);
F=zeros(m,1);%%测力仪x,y正方向和模型的下x,y正方向不一致
F=F1(:,2);
F1(:,2)=F1(:,3);
F1(:,3)=F;
yx=polyfit([F1(1:1000,1);F1(m-999:m,1)],[F1(1:1000,2);F1(m-999:m,2)],1);
y1=polyval(yx,F1(:,1));
F1(:,2)=F1(:,2)-y1;
yy=polyfit([F1(1:1000,1);F1(m-999:m,1)],[F1(1:1000,3);F1(m-999:m,3)],1);
y2=polyval(yy,F1(:,1));
F1(:,3)=F1(:,3)-y2;
yz=polyfit([F1(1:1000,1);F1(m-999:m,1)],[F1(1:1000,4);F1(m-999:m,4)],1);
y3=polyval(yz,F1(:,1));
F1(:,4)=F1(:,4)-y3;
figure(1)
subplot(3,1,1)
plot(F1(:,1),F1(:,2),'b-','Markersize',7,'Markerface','white','linewidth',1.0);
hold on;
xlabel('time(s)')
ylabel('F_x(N)')
set(gca, 'FontSize', 20)
set(get(gca,'XLabel'),'Fontsize',20)
set(get(gca,'YLabel'),'Fontsize',20)
subplot(3,1,2)
plot(F1(:,1),F1(:,3),'r-','Markersize',7,'Markerface','white','linewidth',1.0);
hold on;
xlabel('time(s)')
ylabel('F_y(N)')
set(gca, 'FontSize', 20)
set(get(gca,'XLabel'),'Fontsize',20)
set(get(gca,'YLabel'),'Fontsize',20)
subplot(3,1,3)
plot(F1(:,1),F1(:,4),'g-','Markersize',7,'Markerface','white','linewidth',1.0);
grid on;
hold on;
xlabel('time(s)')
ylabel('F_z(N)')
set(gca, 'FontSize', 20)
set(get(gca,'XLabel'),'Fontsize',20)
set(get(gca,'YLabel'),'Fontsize',20)

F2=xlsread('ID04.xlsx');
[m,n]=size(F2);
F=zeros(m,1);%%测力仪x,y正方向和模型的下x,y正方向不一致
F=F2(:,2);
F2(:,2)=F2(:,3);
F2(:,3)=F;
yx=polyfit([F2(1:1000,1);F2(m-999:m,1)],[F2(1:1000,2);F2(m-999:m,2)],1);
y1=polyval(yx,F2(:,1));
F2(:,2)=F2(:,2)-y1;
yy=polyfit([F2(1:1000,1);F2(m-999:m,1)],[F2(1:1000,3);F2(m-999:m,3)],1);
y2=polyval(yy,F2(:,1));
F2(:,3)=F2(:,3)-y2;
yz=polyfit([F2(1:1000,1);F2(m-999:m,1)],[F2(1:1000,4);F2(m-999:m,4)],1);
y3=polyval(yz,F2(:,1));
F2(:,4)=F2(:,4)-y3;
figure(2)
subplot(3,1,1)
plot(F2(:,1),F2(:,2),'b-','Markersize',7,'Markerface','white','linewidth',1.0);
hold on;
xlabel('time(s)')
ylabel('F_x(N)')
set(gca, 'FontSize', 20)
set(get(gca,'XLabel'),'Fontsize',20)
set(get(gca,'YLabel'),'Fontsize',20)
subplot(3,1,2)
plot(F2(:,1),F2(:,3),'r-','Markersize',7,'Markerface','white','linewidth',1.0);
hold on;
xlabel('time(s)')
ylabel('F_y(N)')
set(gca, 'FontSize', 20)
set(get(gca,'XLabel'),'Fontsize',20)
set(get(gca,'YLabel'),'Fontsize',20)
subplot(3,1,3)
plot(F2(:,1),F2(:,4),'g-','Markersize',7,'Markerface','white','linewidth',1.0);
grid on;
hold on;
xlabel('time(s)')
ylabel('F_z(N)')
set(gca, 'FontSize', 20)
set(get(gca,'XLabel'),'Fontsize',20)
set(get(gca,'YLabel'),'Fontsize',20)

F3=xlsread('ID0806.xlsx');
[m,n]=size(F3);
F=zeros(m,1);%%测力仪x,y正方向和模型的下x,y正方向不一致
F=F3(:,2);
F3(:,2)=F3(:,3);
F3(:,3)=F;
yx=polyfit([F3(1:1000,1);F3(m-999:m,1)],[F3(1:1000,2);F3(m-999:m,2)],1);
y1=polyval(yx,F3(:,1));
F3(:,2)=F3(:,2)-y1;
yy=polyfit([F3(1:1000,1);F3(m-999:m,1)],[F3(1:1000,3);F3(m-999:m,3)],1);
y2=polyval(yy,F3(:,1));
F3(:,3)=F3(:,3)-y2;
yz=polyfit([F3(1:1000,1);F3(m-999:m,1)],[F3(1:1000,4);F3(m-999:m,4)],1);
y3=polyval(yz,F3(:,1));
F3(:,4)=F3(:,4)-y3;
figure(3)
subplot(3,1,1)
plot(F3(:,1),F3(:,2),'b-','Markersize',7,'Markerface','white','linewidth',1.0);
hold on;
xlabel('time(s)')
ylabel('F_x(N)')
set(gca, 'FontSize', 20)
set(get(gca,'XLabel'),'Fontsize',20)
set(get(gca,'YLabel'),'Fontsize',20)
subplot(3,1,2)
plot(F3(:,1),F3(:,3),'r-','Markersize',7,'Markerface','white','linewidth',1.0);
hold on;
xlabel('time(s)')
ylabel('F_y(N)')
set(gca, 'FontSize', 20)
set(get(gca,'XLabel'),'Fontsize',20)
set(get(gca,'YLabel'),'Fontsize',20)
subplot(3,1,3)
plot(F3(:,1),F3(:,4),'g-','Markersize',7,'Markerface','white','linewidth',1.0);
grid on;
hold on;
xlabel('time(s)')
ylabel('F_z(N)')
set(gca, 'FontSize', 20)
set(get(gca,'XLabel'),'Fontsize',20)
set(get(gca,'YLabel'),'Fontsize',20)

F4=xlsread('ID1210.xlsx');
[m,n]=size(F4);
F=zeros(m,1);%%测力仪x,y正方向和模型的下x,y正方向不一致
F=F4(:,2);
F4(:,2)=F4(:,3);
F4(:,3)=F;
yx=polyfit([F4(1:1000,1);F4(m-999:m,1)],[F4(1:1000,2);F4(m-999:m,2)],1);
y1=polyval(yx,F4(:,1));
F4(:,2)=F4(:,2)-y1;
yy=polyfit([F4(1:1000,1);F4(m-999:m,1)],[F4(1:1000,3);F4(m-999:m,3)],1);
y2=polyval(yy,F4(:,1));
F4(:,3)=F4(:,3)-y2;
yz=polyfit([F4(1:1000,1);F4(m-999:m,1)],[F4(1:1000,4);F4(m-999:m,4)],1);
y3=polyval(yz,F4(:,1));
F4(:,4)=F4(:,4)-y3;
figure(4)
subplot(3,1,1)
plot(F4(:,1),F4(:,2),'b-','Markersize',7,'Markerface','white','linewidth',1.0);
hold on;
xlabel('time(s)')
ylabel('F_x(N)')
set(gca, 'FontSize', 20)
set(get(gca,'XLabel'),'Fontsize',20)
set(get(gca,'YLabel'),'Fontsize',20)
subplot(3,1,2)
plot(F4(:,1),F4(:,3),'r-','Markersize',7,'Markerface','white','linewidth',1.0);
hold on;
xlabel('time(s)')
ylabel('F_y(N)')
set(gca, 'FontSize', 20)
set(get(gca,'XLabel'),'Fontsize',20)
set(get(gca,'YLabel'),'Fontsize',20)
subplot(3,1,3)
plot(F4(:,1),F4(:,4),'g-','Markersize',7,'Markerface','white','linewidth',1.0);
grid on;
hold on;
xlabel('time(s)')
ylabel('F_z(N)')
set(gca, 'FontSize', 20)
set(get(gca,'XLabel'),'Fontsize',20)
set(get(gca,'YLabel'),'Fontsize',20)

xlswrite('I02.xlsx',F1(2*20000:9*20000,:));
xlswrite('I04.xlsx',F2(4*20000:14*20000,:));
xlswrite('I06.xlsx',F3(20*20000:25*20000,:));
xlswrite('I08.xlsx',F3(5*20000:15*20000,:));
xlswrite('I10.xlsx',F4(20*20000:25*20000,:));
xlswrite('I12.xlsx',F4(5*20000:15*20000,:));