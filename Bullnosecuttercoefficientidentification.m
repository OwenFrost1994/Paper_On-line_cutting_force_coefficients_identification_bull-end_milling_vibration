clear;
clc;
close all;
%%环形刀切削力系数标定
%%首先求不同切厚多个进给下的平均切削力
f=[0.03;0.06;0.09;0.12];
%%切深为0.3mm的时候
F0303=xlsread('0303.xlsx');
[m,n]=size(F0303);
A=zeros(m,1);%%测力仪x,y正方向和模型的下x,y正方向不一致
A=F0303(:,2);
F0303(:,2)=F0303(:,3);
F0303(:,3)=A;
F0306=xlsread('0306.xlsx');
[m,n]=size(F0306);
A=zeros(m,1);%%测力仪x,y正方向和模型的下x,y正方向不一致
A=F0306(:,2);
F0306(:,2)=F0306(:,3);
F0306(:,3)=A;
F0309=xlsread('0309.xlsx');
[m,n]=size(F0309);
A=zeros(m,1);%%测力仪x,y正方向和模型的下x,y正方向不一致
A=F0309(:,2);
F0309(:,2)=F0309(:,3);
F0309(:,3)=A;
F0312=xlsread('0312.xlsx');
[m,n]=size(F0312);
A=zeros(m,1);%%测力仪x,y正方向和模型的下x,y正方向不一致
A=F0312(:,2);
F0312(:,2)=F0312(:,3);
F0312(:,3)=A;

figure(1)
subplot(3,1,1)
plot(F0303(1:12000,1),F0303(1:12000,2),'b-','Markersize',7,'Markerface','white','linewidth',1.0);%%x方向
hold on;
subplot(3,1,2)
plot(F0303(1:12000,1),F0303(1:12000,3),'r-','Markersize',7,'Markerface','white','linewidth',1.0);%%y方向
hold on;
subplot(3,1,3)
plot(F0303(1:12000,1),F0303(1:12000,4),'g-','Markersize',7,'Markerface','white','linewidth',1.0);%%z方向
hold on;
figure(2)
subplot(3,1,1)
plot(F0306(1:12000,1),F0306(1:12000,2)+5,'b-','Markersize',7,'Markerface','white','linewidth',1.0);%%x方向
hold on;
subplot(3,1,2)
plot(F0306(1:12000,1),F0306(1:12000,3),'r-','Markersize',7,'Markerface','white','linewidth',1.0);%%y方向
hold on;
subplot(3,1,3)
plot(F0306(1:12000,1),F0306(1:12000,4)+10,'g-','Markersize',7,'Markerface','white','linewidth',1.0);%%z方向
hold on;
figure(3)
subplot(3,1,1)
plot(F0309(1:12000,1),F0309(1:12000,2)+5,'b-','Markersize',7,'Markerface','white','linewidth',1.0);%%x方向
hold on;
subplot(3,1,2)
plot(F0309(1:12000,1),F0309(1:12000,3),'r-','Markersize',7,'Markerface','white','linewidth',1.0);%%y方向
hold on;
subplot(3,1,3)
plot(F0309(1:12000,1),F0309(1:12000,4)+18,'g-','Markersize',7,'Markerface','white','linewidth',1.0);%%z方向
hold on;
figure(4)
subplot(3,1,1)
plot(F0312(1:12000,1),F0312(1:12000,2)+5,'b-','Markersize',7,'Markerface','white','linewidth',1.0);%%x方向
hold on;
subplot(3,1,2)
plot(F0312(1:12000,1),F0312(1:12000,3),'r-','Markersize',7,'Markerface','white','linewidth',1.0);%%y方向
hold on;
subplot(3,1,3)
plot(F0312(1:12000,1),F0312(1:12000,4)+18,'g-','Markersize',7,'Markerface','white','linewidth',1.0);%%z方向
hold on;

n1=10800;n2=12000;
AF03(1,1)=mean(F0303(n1:n2,2));AF03(1,2)=mean(F0303(n1:n2,3));AF03(1,3)=mean(F0303(n1:n2,4));
AF03(2,1)=mean(F0306(n1:n2,2))+5;AF03(2,2)=mean(F0306(n1:n2,3));AF03(2,3)=mean(F0306(n1:n2,4));
AF03(3,1)=mean(F0309(n1:n2,2))+5;AF03(3,2)=mean(F0309(n1:n2,3));AF03(3,3)=mean(F0309(n1:n2,4));
AF03(4,1)=mean(F0312(n1:n2,2))+5;AF03(4,2)=mean(F0312(n1:n2,3));AF03(4,3)=mean(F0312(n1:n2,4));

figure(1)
plot(f,AF03(:,1),'bo-','Markersize',7,'Markerface','white','linewidth',3.0);%%x方向
hold on;
plot(f,AF03(:,2),'ro-','Markersize',7,'Markerface','white','linewidth',3.0);%%y方向
hold on;
plot(f,AF03(:,3),'go-','Markersize',7,'Markerface','white','linewidth',3.0);%%z方向
hold on;
xlabel('f_v(mm)')
ylabel('F(N)')
set(gca, 'FontSize', 20)
set(get(gca,'XLabel'),'Fontsize',20)
set(get(gca,'YLabel'),'Fontsize',20)
title('Average Force ap 0.3');
legend('F_x','F_y','F_z')
grid on;

%%切深为0.6mm的时候
F0603=xlsread('0603.xlsx');
[m,n]=size(F0603);
A=zeros(m,1);%%测力仪x,y正方向和模型的下x,y正方向不一致
A=F0603(:,2);
F0603(:,2)=F0603(:,3);
F0603(:,3)=A;
F0606=xlsread('0606.xlsx');
[m,n]=size(F0606);
A=zeros(m,1);%%测力仪x,y正方向和模型的下x,y正方向不一致
A=F0606(:,2);
F0606(:,2)=F0606(:,3);
F0606(:,3)=A;
F0609=xlsread('0609.xlsx');
[m,n]=size(F0609);
A=zeros(m,1);%%测力仪x,y正方向和模型的下x,y正方向不一致
A=F0609(:,2);
F0609(:,2)=F0609(:,3);
F0609(:,3)=A;
F0612=xlsread('0612.xlsx');
[m,n]=size(F0612);
A=zeros(m,1);%%测力仪x,y正方向和模型的下x,y正方向不一致
A=F0612(:,2);
F0612(:,2)=F0612(:,3);
F0612(:,3)=A;

% figure(5)
% subplot(3,1,1)
% plot(F0603(1:12000,1),F0603(1:12000,2),'b-','Markersize',7,'Markerface','white','linewidth',1.0);%%x方向
% hold on;
% subplot(3,1,2)
% plot(F0603(1:12000,1),F0603(1:12000,3),'r-','Markersize',7,'Markerface','white','linewidth',1.0);%%y方向
% hold on;
% subplot(3,1,3)
% plot(F0603(1:12000,1),F0603(1:12000,4),'g-','Markersize',7,'Markerface','white','linewidth',1.0);%%z方向
% hold on;
% figure(6)
% subplot(3,1,1)
% plot(F0606(1:12000,1),F0606(1:12000,2),'b-','Markersize',7,'Markerface','white','linewidth',1.0);%%x方向
% hold on;
% subplot(3,1,2)
% plot(F0606(1:12000,1),F0606(1:12000,3),'r-','Markersize',7,'Markerface','white','linewidth',1.0);%%y方向
% hold on;
% subplot(3,1,3)
% plot(F0606(1:12000,1),F0606(1:12000,4),'g-','Markersize',7,'Markerface','white','linewidth',1.0);%%z方向
% hold on;
% figure(7)
% subplot(3,1,1)
% plot(F0609(1:12000,1),F0609(1:12000,2),'b-','Markersize',7,'Markerface','white','linewidth',1.0);%%x方向
% hold on;
% subplot(3,1,2)
% plot(F0609(1:12000,1),F0609(1:12000,3),'r-','Markersize',7,'Markerface','white','linewidth',1.0);%%y方向
% hold on;
% subplot(3,1,3)
% plot(F0609(1:12000,1),F0609(1:12000,4),'g-','Markersize',7,'Markerface','white','linewidth',1.0);%%z方向
% hold on;
% figure(8)
% subplot(3,1,1)
% plot(F0612(1:12000,1),F0612(1:12000,2),'b-','Markersize',7,'Markerface','white','linewidth',1.0);%%x方向
% hold on;
% subplot(3,1,2)
% plot(F0612(1:12000,1),F0612(1:12000,3),'r-','Markersize',7,'Markerface','white','linewidth',1.0);%%y方向
% hold on;
% subplot(3,1,3)
% plot(F0612(1:12000,1),F0612(1:12000,4),'g-','Markersize',7,'Markerface','white','linewidth',1.0);%%z方向
% hold on;

n1=1;n2=12000;
AF06(1,1)=mean(F0603(n1:n2,2));AF06(1,2)=mean(F0603(n1:n2,3));AF06(1,3)=mean(F0603(n1:n2,4));
AF06(2,1)=mean(F0606(n1:n2,2));AF06(2,2)=mean(F0606(n1:n2,3));AF06(2,3)=mean(F0606(n1:n2,4));
AF06(3,1)=mean(F0609(n1:n2,2));AF06(3,2)=mean(F0609(n1:n2,3));AF06(3,3)=mean(F0609(n1:n2,4));
AF06(4,1)=mean(F0612(n1:n2,2));AF06(4,2)=mean(F0612(n1:n2,3));AF06(4,3)=mean(F0612(n1:n2,4));

% figure(2)
% plot(f,AF06(:,1),'bo-','Markersize',7,'Markerface','white','linewidth',3.0);%%x方向
% hold on;
% plot(f,AF06(:,2),'ro-','Markersize',7,'Markerface','white','linewidth',3.0);%%y方向
% hold on;
% plot(f,AF06(:,3),'go-','Markersize',7,'Markerface','white','linewidth',3.0);%%z方向
% hold on;
% xlabel('f_v(mm)')
% ylabel('F(N)')
% set(gca, 'FontSize', 20)
% set(get(gca,'XLabel'),'Fontsize',20)
% set(get(gca,'YLabel'),'Fontsize',20)
% title('Average Force ap 0.6');
% legend('F_x','F_y','F_z')
% grid on;

%%切深为0.9mm的时候
F0903=xlsread('0903.xlsx');
[m,n]=size(F0903);
A=zeros(m,1);%%测力仪x,y正方向和模型的下x,y正方向不一致
A=F0903(:,2);
F0903(:,2)=F0903(:,3);
F0903(:,3)=A;
F0906=xlsread('0906.xlsx');
[m,n]=size(F0906);
A=zeros(m,1);%%测力仪x,y正方向和模型的下x,y正方向不一致
A=F0906(:,2);
F0906(:,2)=F0906(:,3);
F0906(:,3)=A;
F0909=xlsread('0909.xlsx');
[m,n]=size(F0909);
A=zeros(m,1);%%测力仪x,y正方向和模型的下x,y正方向不一致
A=F0909(:,2);
F0909(:,2)=F0909(:,3);
F0909(:,3)=A;
F0912=xlsread('0912.xlsx');
[m,n]=size(F0912);
A=zeros(m,1);%%测力仪x,y正方向和模型的下x,y正方向不一致
A=F0912(:,2);
F0912(:,2)=F0912(:,3);
F0912(:,3)=A;

% figure(9)
% subplot(3,1,1)
% plot(F0903(1:12000,1),F0903(1:12000,2),'b-','Markersize',7,'Markerface','white','linewidth',1.0);%%x方向
% hold on;
% subplot(3,1,2)
% plot(F0903(1:12000,1),F0903(1:12000,3),'r-','Markersize',7,'Markerface','white','linewidth',1.0);%%y方向
% hold on;
% subplot(3,1,3)
% plot(F0903(1:12000,1),F0903(1:12000,4),'g-','Markersize',7,'Markerface','white','linewidth',1.0);%%z方向
% hold on;
% figure(10)
% subplot(3,1,1)
% plot(F0906(1:12000,1),F0906(1:12000,2),'b-','Markersize',7,'Markerface','white','linewidth',1.0);%%x方向
% hold on;
% subplot(3,1,2)
% plot(F0906(1:12000,1),F0906(1:12000,3),'r-','Markersize',7,'Markerface','white','linewidth',1.0);%%y方向
% hold on;
% subplot(3,1,3)
% plot(F0906(1:12000,1),F0906(1:12000,4),'g-','Markersize',7,'Markerface','white','linewidth',1.0);%%z方向
% hold on;
% figure(11)
% subplot(3,1,1)
% plot(F0909(1:12000,1),F0909(1:12000,2),'b-','Markersize',7,'Markerface','white','linewidth',1.0);%%x方向
% hold on;
% subplot(3,1,2)
% plot(F0909(1:12000,1),F0909(1:12000,3),'r-','Markersize',7,'Markerface','white','linewidth',1.0);%%y方向
% hold on;
% subplot(3,1,3)
% plot(F0909(1:12000,1),F0909(1:12000,4),'g-','Markersize',7,'Markerface','white','linewidth',1.0);%%z方向
% hold on;
% figure(12)
% subplot(3,1,1)
% plot(F0912(1:12000,1),F0912(1:12000,2),'b-','Markersize',7,'Markerface','white','linewidth',1.0);%%x方向
% hold on;
% subplot(3,1,2)
% plot(F0912(1:12000,1),F0912(1:12000,3),'r-','Markersize',7,'Markerface','white','linewidth',1.0);%%y方向
% hold on;
% subplot(3,1,3)
% plot(F0912(1:12000,1),F0912(1:12000,4),'g-','Markersize',7,'Markerface','white','linewidth',1.0);%%z方向
% hold on;

n1=1;n2=12000;
AF09(1,1)=mean(F0903(n1:n2,2));AF09(1,2)=mean(F0903(n1:n2,3));AF09(1,3)=mean(F0903(n1:n2,4));
AF09(2,1)=mean(F0906(n1:n2,2));AF09(2,2)=mean(F0906(n1:n2,3));AF09(2,3)=mean(F0906(n1:n2,4));
AF09(3,1)=mean(F0909(n1:n2,2));AF09(3,2)=mean(F0909(n1:n2,3));AF09(3,3)=mean(F0909(n1:n2,4));
AF09(4,1)=mean(F0912(n1:n2,2));AF09(4,2)=mean(F0912(n1:n2,3));AF09(4,3)=mean(F0912(n1:n2,4));

% figure(3)
% plot(f,AF09(:,1),'bo-','Markersize',7,'Markerface','white','linewidth',3.0);%%x方向
% hold on;
% plot(f,AF09(:,2),'ro-','Markersize',7,'Markerface','white','linewidth',3.0);%%y方向
% hold on;
% plot(f,AF09(:,3),'go-','Markersize',7,'Markerface','white','linewidth',3.0);%%z方向
% hold on;
% xlabel('f_v(mm)')
% ylabel('F(N)')
% set(gca, 'FontSize', 20)
% set(get(gca,'XLabel'),'Fontsize',20)
% set(get(gca,'YLabel'),'Fontsize',20)
% title('Average Force ap 0.9');
% legend('F_x','F_y','F_z')
% grid on;

%%切深为1.2mm的时候
F1203=xlsread('1203.xlsx');
[m,n]=size(F1203);
A=zeros(m,1);%%测力仪x,y正方向和模型的下x,y正方向不一致
A=F1203(:,2);
F1203(:,2)=F1203(:,3);
F1203(:,3)=A;
F1206=xlsread('1206.xlsx');
[m,n]=size(F1206);
A=zeros(m,1);%%测力仪x,y正方向和模型的下x,y正方向不一致
A=F1206(:,2);
F1206(:,2)=F1206(:,3);
F1206(:,3)=A;
F1209=xlsread('1209.xlsx');
[m,n]=size(F1209);
A=zeros(m,1);%%测力仪x,y正方向和模型的下x,y正方向不一致
A=F1209(:,2);
F1209(:,2)=F1209(:,3);
F1209(:,3)=A;
F1212=xlsread('1212.xlsx');
[m,n]=size(F1212);
A=zeros(m,1);%%测力仪x,y正方向和模型的下x,y正方向不一致
A=F1212(:,2);
F1212(:,2)=F1212(:,3);
F1212(:,3)=A;

% figure(13)
% subplot(3,1,1)
% plot(F1203(1:12000,1),F1203(1:12000,2),'b-','Markersize',7,'Markerface','white','linewidth',1.0);%%x方向
% hold on;
% subplot(3,1,2)
% plot(F1203(1:12000,1),F1203(1:12000,3),'r-','Markersize',7,'Markerface','white','linewidth',1.0);%%y方向
% hold on;
% subplot(3,1,3)
% plot(F1203(1:12000,1),F1203(1:12000,4),'g-','Markersize',7,'Markerface','white','linewidth',1.0);%%z方向
% hold on;
% figure(14)
% subplot(3,1,1)
% plot(F1206(1:12000,1),F1206(1:12000,2),'b-','Markersize',7,'Markerface','white','linewidth',1.0);%%x方向
% hold on;
% subplot(3,1,2)
% plot(F1206(1:12000,1),F1206(1:12000,3),'r-','Markersize',7,'Markerface','white','linewidth',1.0);%%y方向
% hold on;
% subplot(3,1,3)
% plot(F1206(1:12000,1),F1206(1:12000,4),'g-','Markersize',7,'Markerface','white','linewidth',1.0);%%z方向
% hold on;
% figure(15)
% subplot(3,1,1)
% plot(F1209(1:12000,1),F1209(1:12000,2),'b-','Markersize',7,'Markerface','white','linewidth',1.0);%%x方向
% hold on;
% subplot(3,1,2)
% plot(F1209(1:12000,1),F1209(1:12000,3),'r-','Markersize',7,'Markerface','white','linewidth',1.0);%%y方向
% hold on;
% subplot(3,1,3)
% plot(F1209(1:12000,1),F1209(1:12000,4),'g-','Markersize',7,'Markerface','white','linewidth',1.0);%%z方向
% hold on;
% figure(16)
% subplot(3,1,1)
% plot(F1212(1:12000,1),F1212(1:12000,2),'b-','Markersize',7,'Markerface','white','linewidth',1.0);%%x方向
% hold on;
% subplot(3,1,2)
% plot(F1212(1:12000,1),F1212(1:12000,3),'r-','Markersize',7,'Markerface','white','linewidth',1.0);%%y方向
% hold on;
% subplot(3,1,3)
% plot(F1212(1:12000,1),F1212(1:12000,4),'g-','Markersize',7,'Markerface','white','linewidth',1.0);%%z方向
% hold on;

n1=1;n2=12000;
AF12(1,1)=mean(F1203(n1:n2,2));AF12(1,2)=mean(F1203(n1:n2,3));AF12(1,3)=mean(F1203(n1:n2,4));
AF12(2,1)=mean(F1206(n1:n2,2));AF12(2,2)=mean(F1206(n1:n2,3));AF12(2,3)=mean(F1206(n1:n2,4));
AF12(3,1)=mean(F1209(n1:n2,2));AF12(3,2)=mean(F1209(n1:n2,3));AF12(3,3)=mean(F1209(n1:n2,4));
AF12(4,1)=mean(F1212(n1:n2,2));AF12(4,2)=mean(F1212(n1:n2,3));AF12(4,3)=mean(F1212(n1:n2,4));

% figure(4)
% plot(f,AF12(:,1),'bo-','Markersize',7,'Markerface','white','linewidth',3.0);%%x方向
% hold on;
% plot(f,AF12(:,2),'ro-','Markersize',7,'Markerface','white','linewidth',3.0);%%y方向
% hold on;
% plot(f,AF12(:,3),'go-','Markersize',7,'Markerface','white','linewidth',3.0);%%z方向
% hold on;
% xlabel('f_v(mm)')
% ylabel('F(N)')
% set(gca, 'FontSize', 20)
% set(get(gca,'XLabel'),'Fontsize',20)
% set(get(gca,'YLabel'),'Fontsize',20)
% title('Average Force ap 1.2');
% legend('F_x','F_y','F_z')
% grid on;

figure(5)
subplot(2,2,1)
plot(f,AF03(:,1),'bo-','Markersize',7,'Markerface','white','linewidth',3.0);%%0.3mm
hold on;
plot(f,AF06(:,1),'ro-','Markersize',7,'Markerface','white','linewidth',3.0);%%0.6mm
hold on;
plot(f,AF09(:,1),'go-','Markersize',7,'Markerface','white','linewidth',3.0);%%0.9mm
hold on;
plot(f,AF12(:,1),'ko-','Markersize',7,'Markerface','white','linewidth',3.0);%%1.2mm
hold on;
xlabel('f_v(mm)')
ylabel('F(N)')
set(gca, 'FontSize', 20)
set(get(gca,'XLabel'),'Fontsize',20)
set(get(gca,'YLabel'),'Fontsize',20)
title('Average Force in x');
legend('a_p=0.3mm','a_p=0.6mm','a_p=0.9mm','a_p=1.2mm')
grid on;

subplot(2,2,2)
plot(f,AF03(:,2),'bo-','Markersize',7,'Markerface','white','linewidth',3.0);%%0.3mm
hold on;
plot(f,AF06(:,2),'ro-','Markersize',7,'Markerface','white','linewidth',3.0);%%0.6mm
hold on;
plot(f,AF09(:,2),'go-','Markersize',7,'Markerface','white','linewidth',3.0);%%0.9mm
hold on;
plot(f,AF12(:,2),'ko-','Markersize',7,'Markerface','white','linewidth',3.0);%%1.2mm
hold on;
xlabel('f_v(mm)')
ylabel('F(N)')
set(gca, 'FontSize', 20)
set(get(gca,'XLabel'),'Fontsize',20)
set(get(gca,'YLabel'),'Fontsize',20)
title('Average Force in y');
legend('a_p=0.3mm','a_p=0.6mm','a_p=0.9mm','a_p=1.2mm')
grid on;

subplot(2,2,3)
plot(f,AF03(:,3),'bo-','Markersize',7,'Markerface','white','linewidth',3.0);%%0.3mm
hold on;
plot(f,AF06(:,3),'ro-','Markersize',7,'Markerface','white','linewidth',3.0);%%0.6mm
hold on;
plot(f,AF09(:,3),'go-','Markersize',7,'Markerface','white','linewidth',3.0);%%0.9mm
hold on;
plot(f,AF12(:,3),'ko-','Markersize',7,'Markerface','white','linewidth',3.0);%%1.2mm
hold on;
xlabel('f_v(mm)')
ylabel('F(N)')
set(gca, 'FontSize', 20)
set(get(gca,'XLabel'),'Fontsize',20)
set(get(gca,'YLabel'),'Fontsize',20)
title('Average Force in z');
legend('a_p=0.3mm','a_p=0.6mm','a_p=0.9mm','a_p=1.2mm')
grid on;

%%进行拟合
yx=polyfit(f,AF03(:,1),1);
y1=polyval(yx,0:0.01:0.12);
yy=polyfit(f,AF03(:,2),1);
y2=polyval(yy,0:0.01:0.12);
yz=polyfit(f,AF03(:,3),1);
y3=polyval(yz,0:0.01:0.12);
NH(1,:)=[yx,yy,yz];
figure(5)
subplot(2,2,1)
plot(0:0.01:0.12,y1,'b--','Markersize',7,'Markerface','white','linewidth',3.0);
hold on;
subplot(2,2,2)
plot(0:0.01:0.12,y2,'b--','Markersize',7,'Markerface','white','linewidth',3.0);
hold on;
subplot(2,2,3)
plot(0:0.01:0.12,y3,'b--','Markersize',7,'Markerface','white','linewidth',3.0);
hold on;

yx=polyfit(f,AF06(:,1),1);
y1=polyval(yx,0:0.01:0.12);
yy=polyfit(f,AF06(:,2),1);
y2=polyval(yy,0:0.01:0.12);
yz=polyfit(f,AF06(:,3),1);
y3=polyval(yz,0:0.01:0.12);
NH(2,:)=[yx,yy,yz];
figure(5)
subplot(2,2,1)
plot(0:0.01:0.12,y1,'r--','Markersize',7,'Markerface','white','linewidth',3.0);
hold on;
subplot(2,2,2)
plot(0:0.01:0.12,y2,'r--','Markersize',7,'Markerface','white','linewidth',3.0);
hold on;
subplot(2,2,3)
plot(0:0.01:0.12,y3,'r--','Markersize',7,'Markerface','white','linewidth',3.0);
hold on;

yx=polyfit(f,AF09(:,1),1);
y1=polyval(yx,0:0.01:0.12);
yy=polyfit(f,AF09(:,2),1);
y2=polyval(yy,0:0.01:0.12);
yz=polyfit(f,AF09(:,3),1);
y3=polyval(yz,0:0.01:0.12);
NH(3,:)=[yx,yy,yz];
figure(5)
subplot(2,2,1)
plot(0:0.01:0.12,y1,'g--','Markersize',7,'Markerface','white','linewidth',3.0);
hold on;
subplot(2,2,2)
plot(0:0.01:0.12,y2,'g--','Markersize',7,'Markerface','white','linewidth',3.0);
hold on;
subplot(2,2,3)
plot(0:0.01:0.12,y3,'g--','Markersize',7,'Markerface','white','linewidth',3.0);
hold on;

yx=polyfit(f,AF12(:,1),1);
y1=polyval(yx,0:0.01:0.12);
yy=polyfit(f,AF12(:,2),1);
y2=polyval(yy,0:0.01:0.12);
yz=polyfit(f,AF12(:,3),1);
y3=polyval(yz,0:0.01:0.12);
NH(4,:)=[yx,yy,yz];
figure(5)
subplot(2,2,1)
plot(0:0.01:0.12,y1,'k--','Markersize',7,'Markerface','white','linewidth',3.0);
hold on;
subplot(2,2,2)
plot(0:0.01:0.12,y2,'k--','Markersize',7,'Markerface','white','linewidth',3.0);
hold on;
subplot(2,2,3)
plot(0:0.01:0.12,y3,'k--','Markersize',7,'Markerface','white','linewidth',3.0);
hold on;

R=6;%%刀具半径
ae=10;%%切宽
Cst=0;%%自己输入
N=1;%%齿数
Rr=4;%%mm
Rc=2;%%mm
b=pi/6;%%顶部螺旋角
Cex=pi;
C(1)=(Cex-Cst)/2;C(2)=(sin(2*Cex)-sin(2*Cst))/4;C(3)=sin(Cex)-sin(Cst);C(4)=(cos(2*Cex)-cos(2*Cst))/4;C(5)=cos(Cex)-cos(Cst);
%%计算辨识过程的几何参数
dz=0.002;
N1=0.3/0.002;
N2=0.6/0.002;
N3=0.9/0.002;
N4=1.2/0.002;
A=zeros(4,3);
B=zeros(4,3);
A(1,1)=0.3;A(2,1)=0.6;A(3,1)=0.9;A(4,1)=1.2;
for i=1:1:N1
    k=acos((Rc-i*dz+0.5*dz)/Rc);
    A(1,2)=A(1,2)+sin(k)*dz;
    A(1,3)=A(1,3)+cos(k)*dz;
    B(1,1)=B(1,1)+sqrt((2*tan(b)*(Rr+sqrt(2*Rc*i*dz-(i*dz)^2))/(Rr+Rc))^2+(Rc-i*dz)^2/(2*Rc*i*dz-(i*dz)^2)+1)*dz;
    B(1,2)=B(1,2)+sin(k)*sqrt((2*tan(b)*(Rr+sqrt(2*Rc*i*dz-(i*dz)^2))/(Rr+Rc))^2+(Rc-i*dz)^2/(2*Rc*i*dz-(i*dz)^2)+1)*dz;
    B(1,3)=B(1,3)+cos(k)*sqrt((2*tan(b)*(Rr+sqrt(2*Rc*i*dz-(i*dz)^2))/(Rr+Rc))^2+(Rc-i*dz)^2/(2*Rc*i*dz-(i*dz)^2)+1)*dz;
end
for i=1:1:N2
    k=acos((Rc-i*dz+0.5*dz)/Rc);
    A(2,2)=A(2,2)+sin(k)*dz;
    A(2,3)=A(2,3)+cos(k)*dz;
    B(2,1)=B(2,1)+sqrt((2*tan(b)*(Rr+sqrt(2*Rc*i*dz-(i*dz)^2))/(Rr+Rc))^2+(Rc-i*dz)^2/(2*Rc*i*dz-(i*dz)^2)+1)*dz;
    B(2,2)=B(2,2)+sin(k)*sqrt((2*tan(b)*(Rr+sqrt(2*Rc*i*dz-(i*dz)^2))/(Rr+Rc))^2+(Rc-i*dz)^2/(2*Rc*i*dz-(i*dz)^2)+1)*dz;
    B(2,3)=B(2,3)+cos(k)*sqrt((2*tan(b)*(Rr+sqrt(2*Rc*i*dz-(i*dz)^2))/(Rr+Rc))^2+(Rc-i*dz)^2/(2*Rc*i*dz-(i*dz)^2)+1)*dz;
end
for i=1:1:N3
    k=acos((Rc-i*dz+0.5*dz)/Rc);
    A(3,2)=A(3,2)+sin(k)*dz;
    A(3,3)=A(3,3)+cos(k)*dz;
    B(3,1)=B(3,1)+sqrt((2*tan(b)*(Rr+sqrt(2*Rc*i*dz-(i*dz)^2))/(Rr+Rc))^2+(Rc-i*dz)^2/(2*Rc*i*dz-(i*dz)^2)+1)*dz;
    B(3,2)=B(3,2)+sin(k)*sqrt((2*tan(b)*(Rr+sqrt(2*Rc*i*dz-(i*dz)^2))/(Rr+Rc))^2+(Rc-i*dz)^2/(2*Rc*i*dz-(i*dz)^2)+1)*dz;
    B(3,3)=B(3,3)+cos(k)*sqrt((2*tan(b)*(Rr+sqrt(2*Rc*i*dz-(i*dz)^2))/(Rr+Rc))^2+(Rc-i*dz)^2/(2*Rc*i*dz-(i*dz)^2)+1)*dz;
end
for i=1:1:N4
    k=acos((Rc-i*dz+0.5*dz)/Rc);
    A(4,2)=A(4,2)+sin(k)*dz;
    A(4,3)=A(4,3)+cos(k)*dz;
    B(4,1)=B(4,1)+sqrt((2*tan(b)*(Rr+sqrt(2*Rc*i*dz-(i*dz)^2))/(Rr+Rc))^2+(Rc-i*dz)^2/(2*Rc*i*dz-(i*dz)^2)+1)*dz;
    B(4,2)=B(4,2)+sin(k)*sqrt((2*tan(b)*(Rr+sqrt(2*Rc*i*dz-(i*dz)^2))/(Rr+Rc))^2+(Rc-i*dz)^2/(2*Rc*i*dz-(i*dz)^2)+1)*dz;
    B(4,3)=B(4,3)+cos(k)*sqrt((2*tan(b)*(Rr+sqrt(2*Rc*i*dz-(i*dz)^2))/(Rr+Rc))^2+(Rc-i*dz)^2/(2*Rc*i*dz-(i*dz)^2)+1)*dz;
end

for i=1:1:4
    Ktc(i)=2*pi*(C(3)*NH(i,1)-(C(2)-C(1))*NH(i,3))/(N*A(i,1)*(C(3)^2)+(C(2)-C(1))^2);
    Krc(i)=((A(i,2)*((C(2)-C(1))*NH(i,1)+C(3)*NH(i,3))/(C(3)^2+(C(2)-C(1))^2)-A(i,3)*NH(i,5)/C(5))*2*pi)/(N*(A(i,2)^2+A(i,3)^2));
    Kac(i)=((A(i,3)*((C(2)-C(1))*NH(i,1)+C(3)*NH(i,3))/(C(3)^2+(C(2)-C(1))^2)+A(i,2)*NH(i,5)/C(5))*2*pi)/(N*(A(i,2)^2+A(i,3)^2));
    Kte(i)=-2*pi*(C(4)*NH(i,2)+C(5)*NH(i,4))/(N*B(i,1)*(C(4)^2+C(5)^2));
    Kre(i)=((B(i,2)*(C(5)*NH(i,2)-C(4)*NH(i,4))/(C(4)^2+C(5)^2)+B(i,3)*NH(i,6)/(2*C(1)))*2*pi)/(N*(B(i,2)^2+B(i,3)^2));
    Kae(i)=((B(i,3)*(C(5)*NH(i,2)-C(4)*NH(i,4))/(C(4)^2+C(5)^2)-B(i,2)*NH(i,6)/(2*C(1)))*2*pi)/(N*(B(i,2)^2+B(i,3)^2));
end

figure(6)
subplot(1,2,1)
plot(0.6:0.3:1.2,Ktc(2:4),'bo-','Markersize',7,'Markerface','white','linewidth',3.0);
hold on;
plot(0.6:0.3:1.2,Krc(2:4),'ro-','Markersize',7,'Markerface','white','linewidth',3.0);
hold on;
plot(0.6:0.3:1.2,Kac(2:4),'go-','Markersize',7,'Markerface','white','linewidth',3.0);
hold on;
xlabel('f_v(mm)')
ylabel('K(N/mm^2)')
set(gca, 'FontSize', 20)
set(get(gca,'XLabel'),'Fontsize',20)
set(get(gca,'YLabel'),'Fontsize',20)
title('Shearing coefficients');
legend('K_t_c','K_r_c','K_a_c')
grid on;
subplot(1,2,2)
plot(0.6:0.3:1.2,Kte(2:4),'bo-','Markersize',7,'Markerface','white','linewidth',3.0);
hold on;
plot(0.6:0.3:1.2,Kre(2:4),'ro-','Markersize',7,'Markerface','white','linewidth',3.0);
hold on;
plot(0.6:0.3:1.2,Kae(2:4),'go-','Markersize',7,'Markerface','white','linewidth',3.0);
hold on;
xlabel('f_v(mm)')
ylabel('K(N/mm)')
set(gca, 'FontSize', 20)
set(get(gca,'XLabel'),'Fontsize',20)
set(get(gca,'YLabel'),'Fontsize',20)
title('Edge coefficients');
legend('K_t_e','K_r_e','K_a_e')
grid on;

D=[0.3,0.6,0.9,1.2];
tc=polyfit(D,Ktc,3);
X1=polyval(tc,0.3:0.01:1.2);
rc=polyfit(D,Krc,3);
X2=polyval(rc,0.3:0.01:1.2);
ac=polyfit(D,Kac,3);
X3=polyval(ac,0.3:0.01:1.2);
figure(6)
subplot(1,2,1)
plot(0.3:0.01:1.2,X1,'b--','Markersize',7,'Markerface','white','linewidth',3.0);
hold on;
plot(0.3:0.01:1.2,X2,'r--','Markersize',7,'Markerface','white','linewidth',3.0);
hold on;
plot(0.3:0.01:1.2,X3,'g--','Markersize',7,'Markerface','white','linewidth',3.0);
hold on;
te=polyfit(D,Kte,3);
X4=polyval(te,0.3:0.01:1.2);
re=polyfit(D,Kre,3);
X5=polyval(re,0.3:0.01:1.2);
ae=polyfit(D,Kae,3);
X6=polyval(ae,0.3:0.01:1.2);
subplot(1,2,2)
plot(0.3:0.01:1.2,X4,'b--','Markersize',7,'Markerface','white','linewidth',3.0);
hold on;
plot(0.3:0.01:1.2,X5,'r--','Markersize',7,'Markerface','white','linewidth',3.0);
hold on;
plot(0.3:0.01:1.2,X6,'g--','Markersize',7,'Markerface','white','linewidth',3.0);
hold on;