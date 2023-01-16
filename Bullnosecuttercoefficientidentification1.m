clear;
clc;
close all;
%%环形刀切削力系数标定
%%首先求不同切厚多个进给下的平均切削力
f=[0.03;0.06;0.09;0.12];
%%切深为0.2mm的时候
F0203=xlsread('0203.xlsx');
F0206=xlsread('0206.xlsx');
F0209=xlsread('0209.xlsx');
F0212=xlsread('0212.xlsx');
% figure(1)
% subplot(3,1,1)
% plot(F0203(1:12000,1),F0203(1:12000,2),'b-','Markersize',7,'Markerface','white','linewidth',1.0);%%x方向
% hold on;
% subplot(3,1,2)
% plot(F0203(1:12000,1),F0203(1:12000,3),'r-','Markersize',7,'Markerface','white','linewidth',1.0);%%y方向
% hold on;
% subplot(3,1,3)
% plot(F0203(1:12000,1),F0203(1:12000,4),'g-','Markersize',7,'Markerface','white','linewidth',1.0);%%z方向
% hold on;
% figure(2)
% subplot(3,1,1)
% plot(F0206(1:12000,1),F0206(1:12000,2),'b-','Markersize',7,'Markerface','white','linewidth',1.0);%%x方向
% hold on;
% subplot(3,1,2)
% plot(F0206(1:12000,1),F0206(1:12000,3),'r-','Markersize',7,'Markerface','white','linewidth',1.0);%%y方向
% hold on;
% subplot(3,1,3)
% plot(F0206(1:12000,1),F0206(1:12000,4),'g-','Markersize',7,'Markerface','white','linewidth',1.0);%%z方向
% hold on;
% figure(3)
% subplot(3,1,1)
% plot(F0209(1:12000,1),F0209(1:12000,2),'b-','Markersize',7,'Markerface','white','linewidth',1.0);%%x方向
% hold on;
% subplot(3,1,2)
% plot(F0209(1:12000,1),F0209(1:12000,3),'r-','Markersize',7,'Markerface','white','linewidth',1.0);%%y方向
% hold on;
% subplot(3,1,3)
% plot(F0209(1:12000,1),F0209(1:12000,4),'g-','Markersize',7,'Markerface','white','linewidth',1.0);%%z方向
% hold on;
% figure(4)
% subplot(3,1,1)
% plot(F0212(1:12000,1),F0212(1:12000,2),'b-','Markersize',7,'Markerface','white','linewidth',1.0);%%x方向
% hold on;
% subplot(3,1,2)
% plot(F0212(1:12000,1),F0212(1:12000,3),'r-','Markersize',7,'Markerface','white','linewidth',1.0);%%y方向
% hold on;
% subplot(3,1,3)
% plot(F0212(1:12000,1),F0212(1:12000,4),'g-','Markersize',7,'Markerface','white','linewidth',1.0);%%z方向
% hold on;

n1=12000;n2=24000;
AF02(1,1)=mean(F0203(n1:n2,2));AF02(1,2)=mean(F0203(n1:n2,3));AF02(1,3)=mean(F0203(n1:n2,4));
AF02(2,1)=mean(F0206(n1:n2,2));AF02(2,2)=mean(F0206(n1:n2,3));AF02(2,3)=mean(F0206(n1:n2,4));
AF02(3,1)=mean(F0209(n1:n2,2));AF02(3,2)=mean(F0209(n1:n2,3));AF02(3,3)=mean(F0209(n1:n2,4));
AF02(4,1)=mean(F0212(n1:n2,2));AF02(4,2)=mean(F0212(n1:n2,3));AF02(4,3)=mean(F0212(n1:n2,4));
% figure(5)
% plot(f,AF02(:,1),'bo-','Markersize',7,'Markerface','white','linewidth',3.0);%%x方向
% hold on;
% plot(f,AF02(:,2),'ro-','Markersize',7,'Markerface','white','linewidth',3.0);%%y方向
% hold on;
% plot(f,AF02(:,3),'go-','Markersize',7,'Markerface','white','linewidth',3.0);%%z方向
% hold on;
% xlabel('f_v(mm)')
% ylabel('F(N)')
% set(gca, 'FontSize', 20)
% set(get(gca,'XLabel'),'Fontsize',20)
% set(get(gca,'YLabel'),'Fontsize',20)
% title('Average Force ap 0.2');
% legend('F_x','F_y','F_z')
% grid on;

%%切深为0.4mm的时候
F0403=xlsread('0403.xlsx');
F0406=xlsread('0406.xlsx');
F0409=xlsread('0409.xlsx');
F0412=xlsread('0412.xlsx');
% figure(1)
% subplot(3,1,1)
% plot(F0403(1:12000,1),F0403(1:12000,2),'b-','Markersize',7,'Markerface','white','linewidth',1.0);%%x方向
% hold on;
% subplot(3,1,2)
% plot(F0403(1:12000,1),F0403(1:12000,3),'r-','Markersize',7,'Markerface','white','linewidth',1.0);%%y方向
% hold on;
% subplot(3,1,3)
% plot(F0403(1:12000,1),F0403(1:12000,4),'g-','Markersize',7,'Markerface','white','linewidth',1.0);%%z方向
% hold on;
% figure(2)
% subplot(3,1,1)
% plot(F0406(1:12000,1),F0406(1:12000,2),'b-','Markersize',7,'Markerface','white','linewidth',1.0);%%x方向
% hold on;
% subplot(3,1,2)
% plot(F0406(1:12000,1),F0406(1:12000,3),'r-','Markersize',7,'Markerface','white','linewidth',1.0);%%y方向
% hold on;
% subplot(3,1,3)
% plot(F0406(1:12000,1),F0406(1:12000,4),'g-','Markersize',7,'Markerface','white','linewidth',1.0);%%z方向
% hold on;
% figure(3)
% subplot(3,1,1)
% plot(F0409(1:12000,1),F0409(1:12000,2),'b-','Markersize',7,'Markerface','white','linewidth',1.0);%%x方向
% hold on;
% subplot(3,1,2)
% plot(F0409(1:12000,1),F0409(1:12000,3),'r-','Markersize',7,'Markerface','white','linewidth',1.0);%%y方向
% hold on;
% subplot(3,1,3)
% plot(F0409(1:12000,1),F0409(1:12000,4),'g-','Markersize',7,'Markerface','white','linewidth',1.0);%%z方向
% hold on;
% figure(4)
% subplot(3,1,1)
% plot(F0412(1:12000,1),F0412(1:12000,2),'b-','Markersize',7,'Markerface','white','linewidth',1.0);%%x方向
% hold on;
% subplot(3,1,2)
% plot(F0412(1:12000,1),F0412(1:12000,3),'r-','Markersize',7,'Markerface','white','linewidth',1.0);%%y方向
% hold on;
% subplot(3,1,3)
% plot(F0412(1:12000,1),F0412(1:12000,4),'g-','Markersize',7,'Markerface','white','linewidth',1.0);%%z方向
% hold on;

n1=12000;n2=24000;
AF04(1,1)=mean(F0403(n1:n2,2));AF04(1,2)=mean(F0403(n1:n2,3));AF04(1,3)=mean(F0403(n1:n2,4));
AF04(2,1)=mean(F0406(n1:n2,2));AF04(2,2)=mean(F0406(n1:n2,3));AF04(2,3)=mean(F0406(n1:n2,4));
AF04(3,1)=mean(F0409(n1:n2,2));AF04(3,2)=mean(F0409(n1:n2,3));AF04(3,3)=mean(F0409(n1:n2,4));
AF04(4,1)=mean(F0412(n1:n2,2));AF04(4,2)=mean(F0412(n1:n2,3));AF04(4,3)=mean(F0412(n1:n2,4));
% figure(6)
% plot(f,AF04(:,1),'bo-','Markersize',7,'Markerface','white','linewidth',3.0);%%x方向
% hold on;
% plot(f,AF04(:,2),'ro-','Markersize',7,'Markerface','white','linewidth',3.0);%%y方向
% hold on;
% plot(f,AF04(:,3),'go-','Markersize',7,'Markerface','white','linewidth',3.0);%%z方向
% hold on;
% xlabel('f_v(mm)')
% ylabel('F(N)')
% set(gca, 'FontSize', 20)
% set(get(gca,'XLabel'),'Fontsize',20)
% set(get(gca,'YLabel'),'Fontsize',20)
% title('Average Force ap 0.4');
% legend('F_x','F_y','F_z')
% grid on;

%%切深为0.6mm的时候
F0603=xlsread('0603.xlsx');
F0606=xlsread('0606.xlsx');
F0609=xlsread('0609.xlsx');
F0612=xlsread('0612.xlsx');
% figure(1)
% subplot(3,1,1)
% plot(F0603(1:12000,1),F0603(1:12000,2),'b-','Markersize',7,'Markerface','white','linewidth',1.0);%%x方向
% hold on;
% subplot(3,1,2)
% plot(F0603(1:12000,1),F0603(1:12000,3),'r-','Markersize',7,'Markerface','white','linewidth',1.0);%%y方向
% hold on;
% subplot(3,1,3)
% plot(F0603(1:12000,1),F0603(1:12000,4),'g-','Markersize',7,'Markerface','white','linewidth',1.0);%%z方向
% hold on;
% figure(2)
% subplot(3,1,1)
% plot(F0606(1:12000,1),F0606(1:12000,2),'b-','Markersize',7,'Markerface','white','linewidth',1.0);%%x方向
% hold on;
% subplot(3,1,2)
% plot(F0606(1:12000,1),F0606(1:12000,3),'r-','Markersize',7,'Markerface','white','linewidth',1.0);%%y方向
% hold on;
% subplot(3,1,3)
% plot(F0606(1:12000,1),F0606(1:12000,4),'g-','Markersize',7,'Markerface','white','linewidth',1.0);%%z方向
% hold on;
% figure(3)
% subplot(3,1,1)
% plot(F0609(1:12000,1),F0609(1:12000,2),'b-','Markersize',7,'Markerface','white','linewidth',1.0);%%x方向
% hold on;
% subplot(3,1,2)
% plot(F0609(1:12000,1),F0609(1:12000,3),'r-','Markersize',7,'Markerface','white','linewidth',1.0);%%y方向
% hold on;
% subplot(3,1,3)
% plot(F0609(1:12000,1),F0609(1:12000,4),'g-','Markersize',7,'Markerface','white','linewidth',1.0);%%z方向
% hold on;
% figure(4)
% subplot(3,1,1)
% plot(F0612(1:12000,1),F0612(1:12000,2),'b-','Markersize',7,'Markerface','white','linewidth',1.0);%%x方向
% hold on;
% subplot(3,1,2)
% plot(F0612(1:12000,1),F0612(1:12000,3),'r-','Markersize',7,'Markerface','white','linewidth',1.0);%%y方向
% hold on;
% subplot(3,1,3)
% plot(F0612(1:12000,1),F0612(1:12000,4),'g-','Markersize',7,'Markerface','white','linewidth',1.0);%%z方向
% hold on;

n1=12000;n2=24000;
AF06(1,1)=mean(F0603(n1:n2,2));AF06(1,2)=mean(F0603(n1:n2,3));AF06(1,3)=mean(F0603(n1:n2,4));
AF06(2,1)=mean(F0606(n1:n2,2));AF06(2,2)=mean(F0606(n1:n2,3));AF06(2,3)=mean(F0606(n1:n2,4));
AF06(3,1)=mean(F0609(n1:n2,2));AF06(3,2)=mean(F0609(n1:n2,3));AF06(3,3)=mean(F0609(n1:n2,4));
AF06(4,1)=mean(F0612(n1:n2,2));AF06(4,2)=mean(F0612(n1:n2,3));AF06(4,3)=mean(F0612(n1:n2,4));
% figure(7)
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

%%切深为0.8mm的时候
F0803=xlsread('0803.xlsx');
F0806=xlsread('0806.xlsx');
F0809=xlsread('0809.xlsx');
F0812=xlsread('0812.xlsx');
% figure(1)
% subplot(3,1,1)
% plot(F0803(1:12000,1),F0803(1:12000,2),'b-','Markersize',7,'Markerface','white','linewidth',1.0);%%x方向
% hold on;
% subplot(3,1,2)
% plot(F0803(1:12000,1),F0803(1:12000,3),'r-','Markersize',7,'Markerface','white','linewidth',1.0);%%y方向
% hold on;
% subplot(3,1,3)
% plot(F0803(1:12000,1),F0803(1:12000,4),'g-','Markersize',7,'Markerface','white','linewidth',1.0);%%z方向
% hold on;
% figure(2)
% subplot(3,1,1)
% plot(F0806(1:12000,1),F0806(1:12000,2),'b-','Markersize',7,'Markerface','white','linewidth',1.0);%%x方向
% hold on;
% subplot(3,1,2)
% plot(F0806(1:12000,1),F0806(1:12000,3),'r-','Markersize',7,'Markerface','white','linewidth',1.0);%%y方向
% hold on;
% subplot(3,1,3)
% plot(F0806(1:12000,1),F0806(1:12000,4),'g-','Markersize',7,'Markerface','white','linewidth',1.0);%%z方向
% hold on;
% figure(3)
% subplot(3,1,1)
% plot(F0809(1:12000,1),F0809(1:12000,2),'b-','Markersize',7,'Markerface','white','linewidth',1.0);%%x方向
% hold on;
% subplot(3,1,2)
% plot(F0809(1:12000,1),F0809(1:12000,3),'r-','Markersize',7,'Markerface','white','linewidth',1.0);%%y方向
% hold on;
% subplot(3,1,3)
% plot(F0809(1:12000,1),F0809(1:12000,4),'g-','Markersize',7,'Markerface','white','linewidth',1.0);%%z方向
% hold on;
% figure(4)
% subplot(3,1,1)
% plot(F0812(1:12000,1),F0812(1:12000,2),'b-','Markersize',7,'Markerface','white','linewidth',1.0);%%x方向
% hold on;
% subplot(3,1,2)
% plot(F0812(1:12000,1),F0812(1:12000,3),'r-','Markersize',7,'Markerface','white','linewidth',1.0);%%y方向
% hold on;
% subplot(3,1,3)
% plot(F0812(1:12000,1),F0812(1:12000,4),'g-','Markersize',7,'Markerface','white','linewidth',1.0);%%z方向
% hold on;

n1=12000;n2=24000;
AF08(1,1)=mean(F0803(n1:n2,2));AF08(1,2)=mean(F0803(n1:n2,3));AF08(1,3)=mean(F0803(n1:n2,4));
AF08(2,1)=mean(F0806(n1:n2,2));AF08(2,2)=mean(F0806(n1:n2,3));AF08(2,3)=mean(F0806(n1:n2,4));
AF08(3,1)=mean(F0809(n1:n2,2));AF08(3,2)=mean(F0809(n1:n2,3));AF08(3,3)=mean(F0809(n1:n2,4));
AF08(4,1)=mean(F0812(n1:n2,2));AF08(4,2)=mean(F0812(n1:n2,3));AF08(4,3)=mean(F0812(n1:n2,4));
% figure(8)
% plot(f,AF08(:,1),'bo-','Markersize',7,'Markerface','white','linewidth',3.0);%%x方向
% hold on;
% plot(f,AF08(:,2),'ro-','Markersize',7,'Markerface','white','linewidth',3.0);%%y方向
% hold on;
% plot(f,AF08(:,3),'go-','Markersize',7,'Markerface','white','linewidth',3.0);%%z方向
% hold on;
% xlabel('f_v(mm)')
% ylabel('F(N)')
% set(gca, 'FontSize', 20)
% set(get(gca,'XLabel'),'Fontsize',20)
% set(get(gca,'YLabel'),'Fontsize',20)
% title('Average Force ap 0.8');
% legend('F_x','F_y','F_z')
% grid on;

%%切深为1mm的时候
F1003=xlsread('1003.xlsx');
F1006=xlsread('1006.xlsx');
F1009=xlsread('1009.xlsx');
F1012=xlsread('1012.xlsx');
% figure(1)
% subplot(3,1,1)
% plot(F1003(1:12000,1),F1003(1:12000,2),'b-','Markersize',7,'Markerface','white','linewidth',1.0);%%x方向
% hold on;
% subplot(3,1,2)
% plot(F1003(1:12000,1),F1003(1:12000,3),'r-','Markersize',7,'Markerface','white','linewidth',1.0);%%y方向
% hold on;
% subplot(3,1,3)
% plot(F1003(1:12000,1),F1003(1:12000,4),'g-','Markersize',7,'Markerface','white','linewidth',1.0);%%z方向
% hold on;
% figure(2)
% subplot(3,1,1)
% plot(F1006(1:12000,1),F1006(1:12000,2),'b-','Markersize',7,'Markerface','white','linewidth',1.0);%%x方向
% hold on;
% subplot(3,1,2)
% plot(F1006(1:12000,1),F1006(1:12000,3),'r-','Markersize',7,'Markerface','white','linewidth',1.0);%%y方向
% hold on;
% subplot(3,1,3)
% plot(F1006(1:12000,1),F1006(1:12000,4),'g-','Markersize',7,'Markerface','white','linewidth',1.0);%%z方向
% hold on;
% figure(3)
% subplot(3,1,1)
% plot(F1009(1:12000,1),F1009(1:12000,2),'b-','Markersize',7,'Markerface','white','linewidth',1.0);%%x方向
% hold on;
% subplot(3,1,2)
% plot(F1009(1:12000,1),F1009(1:12000,3),'r-','Markersize',7,'Markerface','white','linewidth',1.0);%%y方向
% hold on;
% subplot(3,1,3)
% plot(F1009(1:12000,1),F1009(1:12000,4),'g-','Markersize',7,'Markerface','white','linewidth',1.0);%%z方向
% hold on;
% figure(4)
% subplot(3,1,1)
% plot(F1012(1:12000,1),F1012(1:12000,2),'b-','Markersize',7,'Markerface','white','linewidth',1.0);%%x方向
% hold on;
% subplot(3,1,2)
% plot(F1012(1:12000,1),F1012(1:12000,3),'r-','Markersize',7,'Markerface','white','linewidth',1.0);%%y方向
% hold on;
% subplot(3,1,3)
% plot(F1012(1:12000,1),F1012(1:12000,4),'g-','Markersize',7,'Markerface','white','linewidth',1.0);%%z方向
% hold on;

n1=12000;n2=24000;
AF10(1,1)=mean(F1003(n1:n2,2));AF10(1,2)=mean(F1003(n1:n2,3));AF10(1,3)=mean(F1003(n1:n2,4));
AF10(2,1)=mean(F1006(n1:n2,2));AF10(2,2)=mean(F1006(n1:n2,3));AF10(2,3)=mean(F1006(n1:n2,4));
AF10(3,1)=mean(F1009(n1:n2,2));AF10(3,2)=mean(F1009(n1:n2,3));AF10(3,3)=mean(F1009(n1:n2,4));
AF10(4,1)=mean(F1012(n1:n2,2));AF10(4,2)=mean(F1012(n1:n2,3));AF10(4,3)=mean(F1012(n1:n2,4));
% figure(9)
% plot(f,AF10(:,1),'bo-','Markersize',7,'Markerface','white','linewidth',3.0);%%x方向
% hold on;
% plot(f,AF10(:,2),'ro-','Markersize',7,'Markerface','white','linewidth',3.0);%%y方向
% hold on;
% plot(f,AF10(:,3),'go-','Markersize',7,'Markerface','white','linewidth',3.0);%%z方向
% hold on;
% xlabel('f_v(mm)')
% ylabel('F(N)')
% set(gca, 'FontSize', 20)
% set(get(gca,'XLabel'),'Fontsize',20)
% set(get(gca,'YLabel'),'Fontsize',20)
% title('Average Force ap 1.0');
% legend('F_x','F_y','F_z')
% grid on;

%%切深为1.2mm的时候
F1203=xlsread('1203.xlsx');
F1206=xlsread('1206.xlsx');
F1209=xlsread('1209.xlsx');
F1212=xlsread('1212.xlsx');
% figure(1)
% subplot(3,1,1)
% plot(F1203(1:12000,1),F1203(1:12000,2),'b-','Markersize',7,'Markerface','white','linewidth',1.0);%%x方向
% hold on;
% subplot(3,1,2)
% plot(F1203(1:12000,1),F1203(1:12000,3),'r-','Markersize',7,'Markerface','white','linewidth',1.0);%%y方向
% hold on;
% subplot(3,1,3)
% plot(F1203(1:12000,1),F1203(1:12000,4),'g-','Markersize',7,'Markerface','white','linewidth',1.0);%%z方向
% hold on;
% figure(2)
% subplot(3,1,1)
% plot(F1206(1:12000,1),F1206(1:12000,2),'b-','Markersize',7,'Markerface','white','linewidth',1.0);%%x方向
% hold on;
% subplot(3,1,2)
% plot(F1206(1:12000,1),F1206(1:12000,3),'r-','Markersize',7,'Markerface','white','linewidth',1.0);%%y方向
% hold on;
% subplot(3,1,3)
% plot(F1206(1:12000,1),F1206(1:12000,4),'g-','Markersize',7,'Markerface','white','linewidth',1.0);%%z方向
% hold on;
% figure(3)
% subplot(3,1,1)
% plot(F1209(1:12000,1),F1209(1:12000,2),'b-','Markersize',7,'Markerface','white','linewidth',1.0);%%x方向
% hold on;
% subplot(3,1,2)
% plot(F1209(1:12000,1),F1209(1:12000,3),'r-','Markersize',7,'Markerface','white','linewidth',1.0);%%y方向
% hold on;
% subplot(3,1,3)
% plot(F1209(1:12000,1),F1209(1:12000,4),'g-','Markersize',7,'Markerface','white','linewidth',1.0);%%z方向
% hold on;
% figure(4)
% subplot(3,1,1)
% plot(F1212(1:12000,1),F1212(1:12000,2),'b-','Markersize',7,'Markerface','white','linewidth',1.0);%%x方向
% hold on;
% subplot(3,1,2)
% plot(F1212(1:12000,1),F1212(1:12000,3),'r-','Markersize',7,'Markerface','white','linewidth',1.0);%%y方向
% hold on;
% subplot(3,1,3)
% plot(F1212(1:12000,1),F1212(1:12000,4),'g-','Markersize',7,'Markerface','white','linewidth',1.0);%%z方向
% hold on;

n1=12000;n2=24000;
AF12(1,1)=mean(F1203(n1:n2,2));AF12(1,2)=mean(F1203(n1:n2,3));AF12(1,3)=mean(F1203(n1:n2,4));
AF12(2,1)=mean(F1206(n1:n2,2));AF12(2,2)=mean(F1206(n1:n2,3));AF12(2,3)=mean(F1206(n1:n2,4));
AF12(3,1)=mean(F1209(n1:n2,2));AF12(3,2)=mean(F1209(n1:n2,3));AF12(3,3)=mean(F1209(n1:n2,4));
AF12(4,1)=mean(F1212(n1:n2,2));AF12(4,2)=mean(F1212(n1:n2,3));AF12(4,3)=mean(F1212(n1:n2,4));
% figure(10)
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

figure(1)
subplot(2,2,1)
plot(f,AF02(:,1),'bo-','Markersize',7,'Markerface','white','linewidth',3.0);%%0.2mm
hold on;
plot(f,AF04(:,1),'ro-','Markersize',7,'Markerface','white','linewidth',3.0);%%0.4mm
hold on;
plot(f,AF06(:,1),'go-','Markersize',7,'Markerface','white','linewidth',3.0);%%0.6mm
hold on;
plot(f,AF08(:,1),'ko-','Markersize',7,'Markerface','white','linewidth',3.0);%%0.8mm
hold on;
plot(f,AF10(:,1),'yo-','Markersize',7,'Markerface','white','linewidth',3.0);%%1.0mm
hold on;
plot(f,AF12(:,1),'co-','Markersize',7,'Markerface','white','linewidth',3.0);%%1.2mm
hold on;
xlabel('f_v(mm)')
ylabel('F(N)')
set(gca, 'FontSize', 20)
set(get(gca,'XLabel'),'Fontsize',20)
set(get(gca,'YLabel'),'Fontsize',20)
title('Average Force in x');
legend('a_p=0.2mm','a_p=0.4mm','a_p=0.6mm','a_p=0.8mm','a_p=1.0mm','a_p=1.2mm')
grid on;

subplot(2,2,2)
plot(f,AF02(:,2),'bo-','Markersize',7,'Markerface','white','linewidth',3.0);%%0.2mm
hold on;
plot(f,AF04(:,2),'ro-','Markersize',7,'Markerface','white','linewidth',3.0);%%0.7mm
hold on;
plot(f,AF06(:,2),'go-','Markersize',7,'Markerface','white','linewidth',3.0);%%0.6mm
hold on;
plot(f,AF08(:,2),'ko-','Markersize',7,'Markerface','white','linewidth',3.0);%%0.8mm
hold on;
plot(f,AF10(:,2),'yo-','Markersize',7,'Markerface','white','linewidth',3.0);%%1.0mm
hold on;
plot(f,AF12(:,2),'co-','Markersize',7,'Markerface','white','linewidth',3.0);%%1.2mm
hold on;
xlabel('f_v(mm)')
ylabel('F(N)')
set(gca, 'FontSize', 20)
set(get(gca,'XLabel'),'Fontsize',20)
set(get(gca,'YLabel'),'Fontsize',20)
title('Average Force in y');
legend('a_p=0.2mm','a_p=0.4mm','a_p=0.6mm','a_p=0.8mm','a_p=1.0mm','a_p=1.2mm')
grid on;

subplot(2,2,3)
plot(f,AF02(:,3),'bo-','Markersize',7,'Markerface','white','linewidth',3.0);%%0.2mm
hold on;
plot(f,AF04(:,3),'ro-','Markersize',7,'Markerface','white','linewidth',3.0);%%0.4mm
hold on;
plot(f,AF06(:,3),'go-','Markersize',7,'Markerface','white','linewidth',3.0);%%0.6mm
hold on;
plot(f,AF08(:,3),'ko-','Markersize',7,'Markerface','white','linewidth',3.0);%%0.8mm
hold on;
plot(f,AF10(:,3),'yo-','Markersize',7,'Markerface','white','linewidth',3.0);%%1.0mm
hold on;
plot(f,AF12(:,3),'co-','Markersize',7,'Markerface','white','linewidth',3.0);%%1.2mm
hold on;
xlabel('f_v(mm)')
ylabel('F(N)')
set(gca, 'FontSize', 20)
set(get(gca,'XLabel'),'Fontsize',20)
set(get(gca,'YLabel'),'Fontsize',20)
title('Average Force in z');
legend('a_p=0.2mm','a_p=0.4mm','a_p=0.6mm','a_p=0.8mm','a_p=1.0mm','a_p=1.2mm')
grid on;

%%进行拟合
yx=polyfit(f,AF02(:,1),1);
y1=polyval(yx,0:0.01:0.12);
yy=polyfit(f,AF02(:,2),1);
y2=polyval(yy,0:0.01:0.12);
yz=polyfit(f,AF02(:,3),1);
y3=polyval(yz,0:0.01:0.12);
NH(1,:)=[yx,yy,yz];
figure(1)
subplot(2,2,1)
plot(0:0.01:0.12,y1,'b--','Markersize',7,'Markerface','white','linewidth',3.0);
hold on;
subplot(2,2,2)
plot(0:0.01:0.12,y2,'b--','Markersize',7,'Markerface','white','linewidth',3.0);
hold on;
subplot(2,2,3)
plot(0:0.01:0.12,y3,'b--','Markersize',7,'Markerface','white','linewidth',3.0);
hold on;

yx=polyfit(f,AF04(:,1),1);
y1=polyval(yx,0:0.01:0.12);
yy=polyfit(f,AF04(:,2),1);
y2=polyval(yy,0:0.01:0.12);
yz=polyfit(f,AF04(:,3),1);
y3=polyval(yz,0:0.01:0.12);
NH(2,:)=[yx,yy,yz];
figure(1)
subplot(2,2,1)
plot(0:0.01:0.12,y1,'r--','Markersize',7,'Markerface','white','linewidth',3.0);
hold on;
subplot(2,2,2)
plot(0:0.01:0.12,y2,'r--','Markersize',7,'Markerface','white','linewidth',3.0);
hold on;
subplot(2,2,3)
plot(0:0.01:0.12,y3,'r--','Markersize',7,'Markerface','white','linewidth',3.0);
hold on;

yx=polyfit(f,AF06(:,1),1);
y1=polyval(yx,0:0.01:0.12);
yy=polyfit(f,AF06(:,2),1);
y2=polyval(yy,0:0.01:0.12);
yz=polyfit(f,AF06(:,3),1);
y3=polyval(yz,0:0.01:0.12);
NH(3,:)=[yx,yy,yz];
figure(1)
subplot(2,2,1)
plot(0:0.01:0.12,y1,'g--','Markersize',7,'Markerface','white','linewidth',3.0);
hold on;
subplot(2,2,2)
plot(0:0.01:0.12,y2,'g--','Markersize',7,'Markerface','white','linewidth',3.0);
hold on;
subplot(2,2,3)
plot(0:0.01:0.12,y3,'g--','Markersize',7,'Markerface','white','linewidth',3.0);
hold on;

yx=polyfit(f,AF08(:,1),1);
y1=polyval(yx,0:0.01:0.12);
yy=polyfit(f,AF08(:,2),1);
y2=polyval(yy,0:0.01:0.12);
yz=polyfit(f,AF08(:,3),1);
y3=polyval(yz,0:0.01:0.12);
NH(4,:)=[yx,yy,yz];
figure(1)
subplot(2,2,1)
plot(0:0.01:0.12,y1,'k--','Markersize',7,'Markerface','white','linewidth',3.0);
hold on;
subplot(2,2,2)
plot(0:0.01:0.12,y2,'k--','Markersize',7,'Markerface','white','linewidth',3.0);
hold on;
subplot(2,2,3)
plot(0:0.01:0.12,y3,'k--','Markersize',7,'Markerface','white','linewidth',3.0);
hold on;

yx=polyfit(f,AF10(:,1),1);
y1=polyval(yx,0:0.01:0.12);
yy=polyfit(f,AF10(:,2),1);
y2=polyval(yy,0:0.01:0.12);
yz=polyfit(f,AF10(:,3),1);
y3=polyval(yz,0:0.01:0.12);
NH(5,:)=[yx,yy,yz];
figure(1)
subplot(2,2,1)
plot(0:0.01:0.12,y1,'y--','Markersize',7,'Markerface','white','linewidth',3.0);
hold on;
subplot(2,2,2)
plot(0:0.01:0.12,y2,'y--','Markersize',7,'Markerface','white','linewidth',3.0);
hold on;
subplot(2,2,3)
plot(0:0.01:0.12,y3,'y--','Markersize',7,'Markerface','white','linewidth',3.0);
hold on;

yx=polyfit(f,AF12(:,1),1);
y1=polyval(yx,0:0.01:0.12);
yy=polyfit(f,AF12(:,2),1);
y2=polyval(yy,0:0.01:0.12);
yz=polyfit(f,AF12(:,3),1);
y3=polyval(yz,0:0.01:0.12);
NH(6,:)=[yx,yy,yz];
figure(1)
subplot(2,2,1)
plot(0:0.01:0.12,y1,'c--','Markersize',7,'Markerface','white','linewidth',3.0);
hold on;
subplot(2,2,2)
plot(0:0.01:0.12,y2,'c--','Markersize',7,'Markerface','white','linewidth',3.0);
hold on;
subplot(2,2,3)
plot(0:0.01:0.12,y3,'c--','Markersize',7,'Markerface','white','linewidth',3.0);
hold on;


R=6;%%刀具半径
ae=12;%%切宽mm
Cst=0;%%自己输入
N=1;%%齿数
Rr=3;%%mm
Rc=3;%%mm
b=pi/6;%%顶部螺旋角
Cex=pi;
C(1)=(Cex-Cst)/2;C(2)=(sin(2*Cex)-sin(2*Cst))/4;C(3)=sin(Cex)-sin(Cst);C(4)=(cos(2*Cex)-cos(2*Cst))/4;C(5)=cos(Cex)-cos(Cst);
%%计算辨识过程的几何参数
dz=0.002;
N1=0.2/0.002;
N2=0.4/0.002;
N3=0.6/0.002;
N4=0.8/0.002;
N5=1.0/0.002;
N6=1.2/0.002;
A=zeros(6,3);
B=zeros(6,3);
A(1,1)=0.2;A(2,1)=0.4;A(3,1)=0.6;A(4,1)=0.8;A(5,1)=1.0;A(6,1)=1.2;
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
for i=1:1:N5
    k=acos((Rc-i*dz+0.5*dz)/Rc);
    A(5,2)=A(3,2)+sin(k)*dz;
    A(5,3)=A(3,3)+cos(k)*dz;
    B(5,1)=B(3,1)+sqrt((2*tan(b)*(Rr+sqrt(2*Rc*i*dz-(i*dz)^2))/(Rr+Rc))^2+(Rc-i*dz)^2/(2*Rc*i*dz-(i*dz)^2)+1)*dz;
    B(5,2)=B(3,2)+sin(k)*sqrt((2*tan(b)*(Rr+sqrt(2*Rc*i*dz-(i*dz)^2))/(Rr+Rc))^2+(Rc-i*dz)^2/(2*Rc*i*dz-(i*dz)^2)+1)*dz;
    B(5,3)=B(3,3)+cos(k)*sqrt((2*tan(b)*(Rr+sqrt(2*Rc*i*dz-(i*dz)^2))/(Rr+Rc))^2+(Rc-i*dz)^2/(2*Rc*i*dz-(i*dz)^2)+1)*dz;
end
for i=1:1:N6
    k=acos((Rc-i*dz+0.5*dz)/Rc);
    A(6,2)=A(4,2)+sin(k)*dz;
    A(6,3)=A(4,3)+cos(k)*dz;
    B(6,1)=B(4,1)+sqrt((2*tan(b)*(Rr+sqrt(2*Rc*i*dz-(i*dz)^2))/(Rr+Rc))^2+(Rc-i*dz)^2/(2*Rc*i*dz-(i*dz)^2)+1)*dz;
    B(6,2)=B(4,2)+sin(k)*sqrt((2*tan(b)*(Rr+sqrt(2*Rc*i*dz-(i*dz)^2))/(Rr+Rc))^2+(Rc-i*dz)^2/(2*Rc*i*dz-(i*dz)^2)+1)*dz;
    B(6,3)=B(4,3)+cos(k)*sqrt((2*tan(b)*(Rr+sqrt(2*Rc*i*dz-(i*dz)^2))/(Rr+Rc))^2+(Rc-i*dz)^2/(2*Rc*i*dz-(i*dz)^2)+1)*dz;
end

for i=1:1:6
    Ktc(i)=2*pi*(C(3)*NH(i,1)-(C(2)-C(1))*NH(i,3))/(N*A(i,1)*(C(3)^2)+(C(2)-C(1))^2);
    Krc(i)=((A(i,2)*((C(2)-C(1))*NH(i,1)+C(3)*NH(i,3))/(C(3)^2+(C(2)-C(1))^2)-A(i,3)*NH(i,5)/C(5))*2*pi)/(N*(A(i,2)^2+A(i,3)^2));
    Kac(i)=((A(i,3)*((C(2)-C(1))*NH(i,1)+C(3)*NH(i,3))/(C(3)^2+(C(2)-C(1))^2)+A(i,2)*NH(i,5)/C(5))*2*pi)/(N*(A(i,2)^2+A(i,3)^2));
    Kte(i)=-2*pi*(C(4)*NH(i,2)+C(5)*NH(i,4))/(N*B(i,1)*(C(4)^2+C(5)^2));
    Kre(i)=((B(i,2)*(C(5)*NH(i,2)-C(4)*NH(i,4))/(C(4)^2+C(5)^2)+B(i,3)*NH(i,6)/(2*C(1)))*2*pi)/(N*(B(i,2)^2+B(i,3)^2));
    Kae(i)=((B(i,3)*(C(5)*NH(i,2)-C(4)*NH(i,4))/(C(4)^2+C(5)^2)-B(i,2)*NH(i,6)/(2*C(1)))*2*pi)/(N*(B(i,2)^2+B(i,3)^2));
end

figure(2)
subplot(1,2,1)
plot(0.2:0.2:1.2,Ktc(1:6),'bo-','Markersize',7,'Markerface','white','linewidth',3.0);
hold on;
plot(0.2:0.2:1.2,Krc(1:6),'ro-','Markersize',7,'Markerface','white','linewidth',3.0);
hold on;
plot(0.2:0.2:1.2,Kac(1:6),'go-','Markersize',7,'Markerface','white','linewidth',3.0);
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
plot(0.2:0.2:1.2,Kte(1:6),'bo-','Markersize',7,'Markerface','white','linewidth',3.0);
hold on;
plot(0.2:0.2:1.2,Kre(1:6),'ro-','Markersize',7,'Markerface','white','linewidth',3.0);
hold on;
plot(0.2:0.2:1.2,Kae(1:6),'go-','Markersize',7,'Markerface','white','linewidth',3.0);
hold on;
xlabel('f_v(mm)')
ylabel('K(N/mm)')
set(gca, 'FontSize', 20)
set(get(gca,'XLabel'),'Fontsize',20)
set(get(gca,'YLabel'),'Fontsize',20)
title('Edge coefficients');
legend('K_t_e','K_r_e','K_a_e')
grid on;

D=[0.2,0.4,0.6,0.8,1.0,1.2];
tc=polyfit(D,Ktc,3);
X1=polyval(tc,0.2:0.01:1.2);
rc=polyfit(D,Krc,3);
X2=polyval(rc,0.2:0.01:1.2);
ac=polyfit(D,Kac,3);
X3=polyval(ac,0.2:0.01:1.2);
figure(2)
subplot(1,2,1)
plot(0.2:0.01:1.2,X1,'b--','Markersize',7,'Markerface','white','linewidth',3.0);
hold on;
plot(0.2:0.01:1.2,X2,'r--','Markersize',7,'Markerface','white','linewidth',3.0);
hold on;
plot(0.2:0.01:1.2,X3,'g--','Markersize',7,'Markerface','white','linewidth',3.0);
hold on;
te=polyfit(D,Kte,3);
X4=polyval(te,0.2:0.01:1.2);
re=polyfit(D,Kre,3);
X5=polyval(re,0.2:0.01:1.2);
ae=polyfit(D,Kae,3);
X6=polyval(ae,0.2:0.01:1.2);
subplot(1,2,2)
plot(0.2:0.01:1.2,X4,'b--','Markersize',7,'Markerface','white','linewidth',3.0);
hold on;
plot(0.2:0.01:1.2,X5,'r--','Markersize',7,'Markerface','white','linewidth',3.0);
hold on;
plot(0.2:0.01:1.2,X6,'g--','Markersize',7,'Markerface','white','linewidth',3.0);
hold on;