%%消除零漂趋势项
close all;
F02=xlsread('IDT02.xlsx');
% figure(1)
% subplot(3,1,1)
% plot(F02(:,1),F02(:,2),'b-','Markersize',7,'Markerface','white','linewidth',1.0);
% grid on;
% hold on;
% xlabel('time(s)')
% ylabel('F_x(N)')
% set(gca, 'FontSize', 20)
% set(get(gca,'XLabel'),'Fontsize',20)
% set(get(gca,'YLabel'),'Fontsize',20)
% subplot(3,1,2)
% plot(F02(:,1),F02(:,3),'r-','Markersize',7,'Markerface','white','linewidth',1.0);
% grid on;
% hold on;
% xlabel('time(s)')
% ylabel('F_y(N)')
% set(gca, 'FontSize', 20)
% set(get(gca,'XLabel'),'Fontsize',20)
% set(get(gca,'YLabel'),'Fontsize',20)
% subplot(3,1,3)
% plot(F02(:,1),F02(:,4),'g-','Markersize',7,'Markerface','white','linewidth',1.0);
% grid on;
% hold on;
% xlabel('time(s)')
% ylabel('F_z(N)')
% set(gca, 'FontSize', 20)
% set(get(gca,'XLabel'),'Fontsize',20)
% set(get(gca,'YLabel'),'Fontsize',20)

% FL02(:,1)=F02(:,1);
% FL02(:,2) = detrend(F02(:,2));
% FL02(:,3) = detrend(F02(:,3));
% FL02(:,4) = detrend(F02(:,4));
% figure(2)
% subplot(3,1,1)
% plot(FL02(:,1),FL02(:,2),'b-','Markersize',7,'Markerface','white','linewidth',1.0);
% hold on;
% xlabel('time(s)')
% ylabel('F_x(N)')
% set(gca, 'FontSize', 20)
% set(get(gca,'XLabel'),'Fontsize',20)
% set(get(gca,'YLabel'),'Fontsize',20)
% subplot(3,1,2)
% plot(FL02(:,1),FL02(:,3),'r-','Markersize',7,'Markerface','white','linewidth',1.0);
% hold on;
% xlabel('time(s)')
% ylabel('F_y(N)')
% set(gca, 'FontSize', 20)
% set(get(gca,'XLabel'),'Fontsize',20)
% set(get(gca,'YLabel'),'Fontsize',20)
% subplot(3,1,3)
% plot(FL02(:,1),FL02(:,4),'g-','Markersize',7,'Markerface','white','linewidth',1.0);
% grid on;
% xlabel('time(s)')
% ylabel('F_z(N)')
% set(gca, 'FontSize', 20)
% set(get(gca,'XLabel'),'Fontsize',20)
% set(get(gca,'YLabel'),'Fontsize',20)

[m,n]=size(F02);
F=zeros(m,1);%%测力仪x,y正方向和模型的下x,y正方向不一致
F=F02(:,2);
F02(:,2)=F02(:,3);
F02(:,3)=F;
yx=polyfit([F02(1:1000,1);F02(m-999:m,1)],[F02(1:1000,2);F02(m-999:m,2)],1);
y1=polyval(yx,F02(:,1));
F02(:,2)=F02(:,2)-y1;
yy=polyfit([F02(1:1000,1);F02(m-999:m,1)],[F02(1:1000,3);F02(m-999:m,3)],1);
y2=polyval(yy,F02(:,1));
F02(:,3)=F02(:,3)-y2;
yz=polyfit([F02(1:1000,1);F02(m-999:m,1)],[F02(1:1000,4);F02(m-999:m,4)],1);
y3=polyval(yz,F02(:,1));
F02(:,4)=F02(:,4)-y3;

figure(3)
subplot(3,1,1)
plot(F02(:,1),F02(:,2),'b-','Markersize',7,'Markerface','white','linewidth',1.0);
hold on;
xlabel('time(s)')
ylabel('F_x(N)')
set(gca, 'FontSize', 20)
set(get(gca,'XLabel'),'Fontsize',20)
set(get(gca,'YLabel'),'Fontsize',20)
subplot(3,1,2)
plot(F02(:,1),F02(:,3),'r-','Markersize',7,'Markerface','white','linewidth',1.0);
hold on;
xlabel('time(s)')
ylabel('F_y(N)')
set(gca, 'FontSize', 20)
set(get(gca,'XLabel'),'Fontsize',20)
set(get(gca,'YLabel'),'Fontsize',20)
subplot(3,1,3)
plot(F02(:,1),F02(:,4),'g-','Markersize',7,'Markerface','white','linewidth',1.0);
grid on;
hold on;
xlabel('time(s)')
ylabel('F_z(N)')
set(gca, 'FontSize', 20)
set(get(gca,'XLabel'),'Fontsize',20)
set(get(gca,'YLabel'),'Fontsize',20)

F04=xlsread('IDT04.xlsx');
[m,n]=size(F04);
F=zeros(m,1);%%测力仪x,y正方向和模型的下x,y正方向不一致
F=F04(:,2);
F04(:,2)=F04(:,3);
F04(:,3)=F;
yx=polyfit([F04(1:1000,1);F04(m-999:m,1)],[F04(1:1000,2);F04(m-999:m,2)],1);
y1=polyval(yx,F04(:,1));
F04(:,2)=F04(:,2)-y1;
yy=polyfit([F04(1:1000,1);F04(m-999:m,1)],[F04(1:1000,3);F04(m-999:m,3)],1);
y2=polyval(yy,F04(:,1));
F04(:,3)=F04(:,3)-y2;
yz=polyfit([F04(1:1000,1);F04(m-999:m,1)],[F04(1:1000,4);F04(m-999:m,4)],1);
y3=polyval(yz,F04(:,1));
F04(:,4)=F04(:,4)-y3;
figure(4)
subplot(3,1,1)
plot(F04(:,1),F04(:,2),'b-','Markersize',7,'Markerface','white','linewidth',1.0);
grid on;
hold on;
xlabel('time(s)')
ylabel('F_x(N)')
set(gca, 'FontSize', 20)
set(get(gca,'XLabel'),'Fontsize',20)
set(get(gca,'YLabel'),'Fontsize',20)
subplot(3,1,2)
plot(F04(:,1),F04(:,3),'r-','Markersize',7,'Markerface','white','linewidth',1.0);
grid on;
hold on;
xlabel('time(s)')
ylabel('F_y(N)')
set(gca, 'FontSize', 20)
set(get(gca,'XLabel'),'Fontsize',20)
set(get(gca,'YLabel'),'Fontsize',20)
subplot(3,1,3)
plot(F04(:,1),F04(:,4),'g-','Markersize',7,'Markerface','white','linewidth',1.0);
grid on;
hold on;
xlabel('time(s)')
ylabel('F_z(N)')
set(gca, 'FontSize', 20)
set(get(gca,'XLabel'),'Fontsize',20)
set(get(gca,'YLabel'),'Fontsize',20)

F06=xlsread('IDT06.xlsx');
[m,n]=size(F06);
F=zeros(m,1);%%测力仪x,y正方向和模型的下x,y正方向不一致
F=F06(:,2);
F06(:,2)=F06(:,3);
F06(:,3)=F;
yx=polyfit([F06(1:1000,1);F06(m-999:m,1)],[F06(1:1000,2);F06(m-999:m,2)],1);
y1=polyval(yx,F06(:,1));
F06(:,2)=F06(:,2)-y1;
yy=polyfit([F06(1:1000,1);F06(m-999:m,1)],[F06(1:1000,3);F06(m-999:m,3)],1);
y2=polyval(yy,F06(:,1));
F06(:,3)=F06(:,3)-y2;
yz=polyfit([F06(1:1000,1);F06(m-999:m,1)],[F06(1:1000,4);F06(m-999:m,4)],1);
y3=polyval(yz,F06(:,1));
F06(:,4)=F06(:,4)-y3;
figure(5)
subplot(3,1,1)
plot(F06(:,1),F06(:,2),'b-','Markersize',7,'Markerface','white','linewidth',1.0);
grid on;
hold on;
xlabel('time(s)')
ylabel('F_x(N)')
set(gca, 'FontSize', 20)
set(get(gca,'XLabel'),'Fontsize',20)
set(get(gca,'YLabel'),'Fontsize',20)
subplot(3,1,2)
plot(F06(:,1),F06(:,3),'r-','Markersize',7,'Markerface','white','linewidth',1.0);
grid on;
hold on;
xlabel('time(s)')
ylabel('F_y(N)')
set(gca, 'FontSize', 20)
set(get(gca,'XLabel'),'Fontsize',20)
set(get(gca,'YLabel'),'Fontsize',20)
subplot(3,1,3)
plot(F06(:,1),F06(:,4),'g-','Markersize',7,'Markerface','white','linewidth',1.0);
grid on;
hold on;
xlabel('time(s)')
ylabel('F_z(N)')
set(gca, 'FontSize', 20)
set(get(gca,'XLabel'),'Fontsize',20)
set(get(gca,'YLabel'),'Fontsize',20)

F08=xlsread('IDT08.xlsx');
[m,n]=size(F08);
F=zeros(m,1);%%测力仪x,y正方向和模型的下x,y正方向不一致
F=F08(:,2);
F08(:,2)=F08(:,3);
F08(:,3)=F;
yx=polyfit([F08(1:1000,1);F08(m-999:m,1)],[F08(1:1000,2);F08(m-999:m,2)],1);
y1=polyval(yx,F08(:,1));
F08(:,2)=F08(:,2)-y1;
yy=polyfit([F08(1:1000,1);F08(m-999:m,1)],[F08(1:1000,3);F08(m-999:m,3)],1);
y2=polyval(yy,F08(:,1));
F08(:,3)=F08(:,3)-y2;
yz=polyfit([F08(1:1000,1);F08(m-999:m,1)],[F08(1:1000,4);F08(m-999:m,4)],1);
y3=polyval(yz,F08(:,1));
F08(:,4)=F08(:,4)-y3;
figure(6)
subplot(3,1,1)
plot(F08(:,1),F08(:,2),'b-','Markersize',7,'Markerface','white','linewidth',1.0);
grid on;
hold on;
xlabel('time(s)')
ylabel('F_x(N)')
set(gca, 'FontSize', 20)
set(get(gca,'XLabel'),'Fontsize',20)
set(get(gca,'YLabel'),'Fontsize',20)
subplot(3,1,2)
plot(F08(:,1),F08(:,3),'r-','Markersize',7,'Markerface','white','linewidth',1.0);
grid on;
hold on;
xlabel('time(s)')
ylabel('F_y(N)')
set(gca, 'FontSize', 20)
set(get(gca,'XLabel'),'Fontsize',20)
set(get(gca,'YLabel'),'Fontsize',20)
subplot(3,1,3)
plot(F08(:,1),F08(:,4),'g-','Markersize',7,'Markerface','white','linewidth',1.0);
grid on;
hold on;
xlabel('time(s)')
ylabel('F_z(N)')
set(gca, 'FontSize', 20)
set(get(gca,'XLabel'),'Fontsize',20)
set(get(gca,'YLabel'),'Fontsize',20)

F10=xlsread('IDT10.xlsx');
[m,n]=size(F10);
F=zeros(m,1);%%测力仪x,y正方向和模型的下x,y正方向不一致
F=F10(:,2);
F10(:,2)=F10(:,3);
F10(:,3)=F;
yx=polyfit([F10(1:1000,1);F10(m-999:m,1)],[F10(1:1000,2);F10(m-999:m,2)],1);
y1=polyval(yx,F10(:,1));
F10(:,2)=F10(:,2)-y1;
yy=polyfit([F10(1:1000,1);F10(m-999:m,1)],[F10(1:1000,3);F10(m-999:m,3)],1);
y2=polyval(yy,F10(:,1));
F10(:,3)=F10(:,3)-y2;
yz=polyfit([F10(1:1000,1);F10(m-999:m,1)],[F10(1:1000,4);F10(m-999:m,4)],1);
y3=polyval(yz,F10(:,1));
F10(:,4)=F10(:,4)-y3;
figure(7)
subplot(3,1,1)
plot(F10(:,1),F10(:,2),'b-','Markersize',7,'Markerface','white','linewidth',1.0);
grid on;
hold on;
xlabel('time(s)')
ylabel('F_x(N)')
set(gca, 'FontSize', 20)
set(get(gca,'XLabel'),'Fontsize',20)
set(get(gca,'YLabel'),'Fontsize',20)
subplot(3,1,2)
plot(F10(:,1),F10(:,3),'r-','Markersize',7,'Markerface','white','linewidth',1.0);
grid on;
hold on;
xlabel('time(s)')
ylabel('F_y(N)')
set(gca, 'FontSize', 20)
set(get(gca,'XLabel'),'Fontsize',20)
set(get(gca,'YLabel'),'Fontsize',20)
subplot(3,1,3)
plot(F10(:,1),F10(:,4),'g-','Markersize',7,'Markerface','white','linewidth',1.0);
grid on;
hold on;
xlabel('time(s)')
ylabel('F_z(N)')
set(gca, 'FontSize', 20)
set(get(gca,'XLabel'),'Fontsize',20)
set(get(gca,'YLabel'),'Fontsize',20)

F12=xlsread('IDT12.xlsx');
[m,n]=size(F12);
F=zeros(m,1);%%测力仪x,y正方向和模型的下x,y正方向不一致
F=F12(:,2);
F12(:,2)=F12(:,3);
F12(:,3)=F;
yx=polyfit([F12(1:1000,1);F12(m-999:m,1)],[F12(1:1000,2);F12(m-999:m,2)],1);
y1=polyval(yx,F12(:,1));
F12(:,2)=F12(:,2)-y1;
yy=polyfit([F12(1:1000,1);F12(m-999:m,1)],[F12(1:1000,3);F12(m-999:m,3)],1);
y2=polyval(yy,F12(:,1));
F12(:,3)=F12(:,3)-y2;
yz=polyfit([F12(1:1000,1);F12(m-999:m,1)],[F12(1:1000,4);F12(m-999:m,4)],1);
y3=polyval(yz,F12(:,1));
F12(:,4)=F12(:,4)-y3;
figure(8)
subplot(3,1,1)
plot(F12(:,1),F12(:,2),'b-','Markersize',7,'Markerface','white','linewidth',1.0);
grid on;
hold on;
xlabel('time(s)')
ylabel('F_x(N)')
set(gca, 'FontSize', 20)
set(get(gca,'XLabel'),'Fontsize',20)
set(get(gca,'YLabel'),'Fontsize',20)
subplot(3,1,2)
plot(F12(:,1),F12(:,3),'r-','Markersize',7,'Markerface','white','linewidth',1.0);
grid on;
hold on;
xlabel('time(s)')
ylabel('F_y(N)')
set(gca, 'FontSize', 20)
set(get(gca,'XLabel'),'Fontsize',20)
set(get(gca,'YLabel'),'Fontsize',20)
subplot(3,1,3)
plot(F12(:,1),F12(:,4),'g-','Markersize',7,'Markerface','white','linewidth',1.0);
grid on;
hold on;
xlabel('time(s)')
ylabel('F_z(N)')
set(gca, 'FontSize', 20)
set(get(gca,'XLabel'),'Fontsize',20)
set(get(gca,'YLabel'),'Fontsize',20)

F=F02(8*20000:13*20000,:);
xlswrite('0203.xlsx',F);
F=F02(16*20000:19*20000,:);
xlswrite('0206.xlsx',F);
F=F02(20.5*20000:23.5*20000,:);
xlswrite('0209.xlsx',F);
F=F02(24*20000:26*20000,:);
xlswrite('0212.xlsx',F);

F=F04(7*20000:15*20000,:);
xlswrite('0403.xlsx',F);
F=F04(17*20000:21*20000,:);
xlswrite('0406.xlsx',F);
F=F04(22*20000:24.5*20000,:);
xlswrite('0409.xlsx',F);
F=F04(25.5*20000:27*20000,:);
xlswrite('0412.xlsx',F);

F=F06(7*20000:15*20000,:);
xlswrite('0603.xlsx',F);
F=F06(18*20000:22*20000,:);
xlswrite('0606.xlsx',F);
F=F06(22.5*20000:25*20000,:);
xlswrite('0609.xlsx',F);
F=F06(26*20000:28*20000,:);
xlswrite('0612.xlsx',F);

F=F08(8*20000:16*20000,:);
xlswrite('0803.xlsx',F);
F=F08(18*20000:22*20000,:);
xlswrite('0806.xlsx',F);
F=F08(23*20000:25.5*20000,:);
xlswrite('0809.xlsx',F);
F=F08(26.5*20000:28*20000,:);
xlswrite('0812.xlsx',F);

F=F10(8*20000:16*20000,:);
xlswrite('1003.xlsx',F);
F=F10(20*20000:23*20000,:);
xlswrite('1006.xlsx',F);
F=F10(24*20000:26.5*20000,:);
xlswrite('1009.xlsx',F);
F=F10(27.5*20000:29*20000,:);
xlswrite('1012.xlsx',F);

F=F12(9*20000:17*20000,:);
xlswrite('1203.xlsx',F);
F=F12(19*20000:22*20000,:);
xlswrite('1206.xlsx',F);
F=F12(23.5*20000:26*20000,:);
xlswrite('1209.xlsx',F);
F=F12(27*20000:29*20000,:);
xlswrite('1212.xlsx',F);

