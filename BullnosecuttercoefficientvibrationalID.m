clear;
clc;
close all;
%%�ڿ���������������µĻ��ε�������ϵ����ʶ%%
%%���߼��β���%%
D=12;%%���߰뾶
R1=3;%%ͷ��Բ���뾶
N=1;%%���߳���
B=pi/6;%%����������
Cp=2*pi/N;%%�ݼ��

%%�����ƺ�%%
%GH909%

%%���߸նȲ���%%
kx=3.5820e07;%%x����ն�
ky=3.5820e07;%%y����ն�
cx=243.2589;%%x��������
cy=243.2589;%%y��������
mx=0.4688;%%x��������
my=0.4688;%%y��������

%%�ӹ�����%%
%%ϳ����ʽ:˳ϳ%%
Cm=1;%%ϳ����ʽ��˳ϳΪ1����ϳΪ0
S=1000;%%����ת��
f=60;%%�����ٶ�
ap=0.2;%%���������λmm��
ae=6;%%���������λmm��
fs=10000;%%����Ƶ��
%%������������%%
R=D/2;%%���߰뾶
kb=(2*tan(B))/D;%%k�¼���
fe=f/(N*S);%%feed every tooth
w=2*pi*S/60;%%���߽��ٶ�
T=2*pi/w;%%��������
Ts=1/fs;%%��������
Ns=floor(60*fs/S);%%һ�������ڵĲ��������
if Cm==1%%˳ϳ
    Cst=pi-acos((R-ae)/R);%%�����
    Cex=pi;%%�г���
else%%��ϳ
    Cst=0;%%�����
    Cex=acos((R-ae)/R);%%�г���
end
Dt=T/Ns;%%����������ļ��
Dc=Dt*w;%%ÿ���������ĽǶȲ�
Dn=ceil(Ns*abs(Cex-Cst)/(2*pi));%%�������̲��������
Nb=ceil(Ns*ap*tan(B)/(2*pi*R))+20;%%

[Fo]=xlsread('I02.xlsx',1);
%%��������Ѿ�����Ԥ�����˲���Ҫ������Ư��ת������
Fo=downsample(Fo,2);
figure(1);
subplot(3,1,1);
plot(Fo(1:2000,1),Fo(1:2000,2),'b');
hold on;
grid on;
subplot(3,1,2);
plot(Fo(1:2000,1),Fo(1:2000,3),'r');
grid on;
hold on;
subplot(3,1,3);
plot(Fo(1:2000,1),Fo(1:2000,4),'k');
hold on;
grid on;

[m,n]=size(Fo);
%%ѡ���������������ڵ�����
F=Fo(245:m,:);
n1=1*Ns;n2=6*Ns;
figure(2);
subplot(2,1,1);
plot(F(n1:n2,1),F(n1:n2,2),'b','Markersize',7,'Markerface','white','linewidth',2.0);
hold on;
grid on;
xlim([min(F(n1:n2,1)) max(F(n1:n2,1))]);
set(gca,'FontName','Times New Roman', 'FontSize', 24)
set(get(gca,'XLabel'),'FontName','Times New Roman','Fontsize',24)
set(get(gca,'YLabel'),'FontName','Times New Roman','Fontsize',24)
% title('Forces in x direction','FontName','Times New Roman','Frontsize',24)
xlabel('time(s)')
ylabel('F_x(N)')
subplot(2,1,2);
plot(F(n1:n2,1),F(n1:n2,3),'r','Markersize',7,'Markerface','white','linewidth',2.0);
grid on;
hold on;
xlim([min(F(n1:n2,1)) max(F(n1:n2,1))]);
set(gca,'FontName','Times New Roman' ,'FontSize', 24)
set(get(gca,'XLabel'),'FontName','Times New Roman','Fontsize',24)
set(get(gca,'YLabel'),'FontName','Times New Roman','Fontsize',24)
% title('Forces in y direction','FontName','Times New Roman','Fontsize',24)
xlabel('time(s)')
ylabel('F_y(N)')
% subplot(3,1,3);
% grid on;
% plot(F(n1:n2,1),F(n1:n2,4),'k','Markersize',7,'Markerface','white','linewidth',2.0');
% xlim([min(F(n1:n2,1)) max(F(n1:n2,1))]);
% set(gca,'FontName','Times New Roman', 'FontSize', 24)
% set(get(gca,'XLabel'),'FontName','Times New Roman','Fontsize',24)
% set(get(gca,'YLabel'),'FontName','Times New Roman','Fontsize',24)
% % title('Forces in z direction','FontName','Times New Roman','Frontsize',24)
% xlabel('time(s)')
% ylabel('F_z(N)')
% hold on;
% grid on;
% gtext('Forces in particular time period','FontName','Times New Roman','Fontsize',24)

%%����ϵת��
C=Cst;
[m,n]=size(F);
Xx=zeros(1,m);%%������x�������λ��
Xy=zeros(1,m);%%������y�������λ��
Vx=zeros(1,m);%%������x��������ٶ�
Vy=zeros(1,m);%%������y��������ٶ�
Dx=zeros(1,m);%%������x�����λ�Ʊ仯����fv�ĵ�һ������
Dy=zeros(1,m);%%������y�����λ�Ʊ仯����fv�ĵڶ�������

k=acos((R1-0.5*ap)/R1);%%��λ�ò���
db=ap/sin(k);
ds=ap*sqrt((((R-R1)+sqrt(R1*ap-(0.5*ap)^2))*2*tan(B)/(R))^2+(R1-0.5*ap)^2/(R1*ap-(0.5*ap)^2)+1);
for i=1:1:m
    
    %%Runge-Kutta����⵶����
    if  i==1 %%�ж��Ƿ��ǳ�ʼ�㣨��һ���㣩
        K1=0;L1=(-cx*0-kx*0+0)/mx;
        K2=0+Dt*L1/2;L2=(-cx*(0+Dt*L1/2)-kx*(0+Dt*K1/2)+(0+F(i,2))/2)/mx;
        K3=0+Dt*L2/2;L3=(-cx*(0+Dt*L2/2)-kx*(0+Dt*K2/2)+(0+F(i,2))/2)/mx;
        K4=0+Dt*L3;L4=(-cx*(0+Dt*L3)-kx*(0+Dt*K3)+F(i,2))/mx;
        Xx(i)=0+Dt*(K1+2*K2+2*K3+K4)/6;
        Vx(i)=0+Dt*(L1+2*L2+2*L3+L4)/6;
        K1=0;L1=(-cy*0-ky*0+0)/my;
        K2=0+Dt*L1/2;L2=(-cy*(0+Dt*L1/2)-ky*(0+Dt*K1/2)+(0+F(i,3))/2)/my;
        K3=0+Dt*L2/2;L3=(-cy*(0+Dt*L2/2)-ky*(0+Dt*K2/2)+(0+F(i,3))/2)/my;
        K4=0+Dt*L3;L4=(-cy*(0+Dt*L3)-ky*(0+Dt*K3)+F(i,3))/my;
        Xy(i)=0+Dt*(K1+2*K2+2*K3+K4)/6;
        Vy(i)=0+Dt*(L1+2*L2+2*L3+L4)/6;
    else %%���ǳ�ʼ��
        K1=Vx(i-1);L1=(-cx*Vx(i-1)-kx*Xx(i-1)+F(i-1,2))/mx;
        K2=Vx(i-1)+Dt*L1/2;L2=(-cx*(Vx(i-1)+Dt*L1/2)-kx*(Xx(i-1)+Dt*K1/2)+(F(i-1,2)+F(i,2))/2)/mx;
        K3=Vx(i-1)+Dt*L2/2;L3=(-cx*(Vx(i-1)+Dt*L2/2)-kx*(Xx(i-1)+Dt*K2/2)+(F(i-1,2)+F(i,2))/2)/mx;
        K4=Vx(i-1)+Dt*L3;L4=(-cx*(Vx(i-1)+Dt*L3)-kx*(Xx(i-1)+Dt*K3)+F(i,2))/mx;
        Xx(i)=Xx(i-1)+Dt*(K1+2*K2+2*K3+K4)/6;
        Vx(i)=Vx(i-1)+Dt*(L1+2*L2+2*L3+L4)/6;
        K1=Vy(i-1);L1=(-cy*Vy(i-1)-ky*Xy(i-1)+F(i-1,3))/my;
        K2=Vy(i-1)+Dt*L1/2;L2=(-cy*(Vy(i-1)+Dt*L1/2)-ky*(Xy(i-1)+Dt*K1/2)+(F(i-1,3)+F(i,3))/2)/my;
        K3=Vy(i-1)+Dt*L2/2;L3=(-cy*(Vy(i-1)+Dt*L2/2)-ky*(Xy(i-1)+Dt*K2/2)+(F(i-1,3)+F(i,3))/2)/my;
        K4=Vy(i-1)+Dt*L3;L4=(-cy*(Vy(i-1)+Dt*L3)-ky*(Xy(i-1)+Dt*K3)+F(i,3))/my;
        Xy(i)=Xy(i-1)+Dt*(K1+2*K2+2*K3+K4)/6;
        Vy(i)=Vy(i-1)+Dt*(L1+2*L2+2*L3+L4)/6;
    end
    
    %%���������ϵĸ��ӽ�����
    if i<=(Ns/N)%%����ǵ�һ���������е�ʱ����м�ϱ���û��ǰһ�������г��Ĳ��Ʊ��棬��ʱ�൱�ڵ������񶯵����
        Dx(i)=1000*(Xx(i)-0);%%ע�⵽����ѧ�����������е�λΪ�����Ƶ�λ������õ�λ�Ƶ�λΪm����ÿ�ݽ������ĵ�λ��mm
        Dy(i)=1000*(Xy(i)-0);
    else
%         q=floor(i*N/Ns);
%         if (i-q*Ns/N)==0
%             q=q-1;
%         else
%         end
%         for n=1:1:q
%             apx(n)=Xx(i-n*Ns/N);
%             apy(n)=Xy(i-n*Ns/N);
%         end
        Dx(i)=1000*(Xx(i)-Xx(i-floor(Ns/N)));
        Dy(i)=1000*(Xy(i)-Xx(i-floor(Ns/N)));
    end
    %%�����Ӿ�̬����ϵת������̬����ϵ
    C=C+Dc;
    if C>2*pi
        C=C-2*pi;
    else
    end
    Cd=C-ap*tan(B)/R;
    T=[-cos(Cd),-sin(k)*sin(Cd),-cos(k)*sin(Cd);sin(Cd),-sin(k)*cos(Cd),-cos(k)*cos(Cd);0,cos(k),-sin(k)];
    f=F(i,2:4);
    F(i,2:4)=(inv(T)*f')'/ap;
end
figure(3);
subplot(2,1,1);
plot(F(n1:n2,1),F(n1:n2,2),'b-','Markersize',7,'Markerface','white','linewidth',3.0);
hold on;
grid on;
xlim([min(F(n1:n2,1)) max(F(n1:n2,1))]);
set(gca,'FontName','Times New Roman' ,'FontSize', 24)
set(get(gca,'XLabel'),'FontName','Times New Roman','Fontsize',24)
set(get(gca,'YLabel'),'FontName','Times New Roman','Fontsize',24)
% title('Forces in x direction','FontName','Times New Roman','Fontsize',24)
xlabel('time(s)')
ylabel('F_x(N/mm)')
subplot(2,1,2);
plot(F(n1:n2,1),F(n1:n2,3),'r-','Markersize',7,'Markerface','white','linewidth',3.0);
hold on;
grid on;
xlim([min(F(n1:n2,1)) max(F(n1:n2,1))]);
set(gca, 'FontName','Times New Roman','FontSize', 24)
set(get(gca,'XLabel'),'FontName','Times New Roman','Fontsize',24)
set(get(gca,'YLabel'),'FontName','Times New Roman','Fontsize',24)
% title('Forces in y direction','FontName','Times New Roman','Fontsize',24)
xlabel('time(s)')
ylabel('F_y(N/mm)')
% subplot(3,1,3);
% plot(F(n1:n2,1),F(n1:n2,4),'k-','Markersize',7,'Markerface','white','linewidth',3.0);
% hold on;
% grid on;
% xlim([min(F(n1:n2,1)) max(F(n1:n2,1))]);
% set(gca ,'FontName','Times New Roman', 'FontSize',24)
% set(get(gca,'XLabel'),'FontName','Times New Roman','Fontsize',24)
% set(get(gca,'YLabel'),'FontName','Times New Roman','Fontsize',24)
% % title('Forces in z direction','FontName','Times New Roman','Fontsize',24)
% xlabel('time(s)')
% ylabel('F_z(N/mm)')
% gtext('Transformed forces in rotatory coordinate system','FontName','Times New Roman','Fontsize',24)

%%���Ƶ�����x�����y�����λ�ƺ��ٶ�ͼ��
figure(4)
subplot(2,2,1)
plot(F(n1:n2,1),Xx(n1:n2),'b-','Markersize',7,'Markerface','white','linewidth',2.0);
hold on;
grid on;
xlim([min(F(n1:n2,1)) max(F(n1:n2,1))]);
xlabel('time(s)')
ylabel('X_x(m)')
set(gca,'FontName','Times New Roman' ,'FontSize', 24)
set(get(gca,'XLabel'),'FontName','Times New Roman','Fontsize',24)
set(get(gca,'YLabel'),'FontName','Times New Roman','Fontsize',24)
% title('Displacement in x direction','FontName','Times New Roman','Fontsize',24)
% figure(4)
% subplot(2,3,2)
% plot(F(n1:n2,1),Vx(n1:n2),'r-','Markersize',7,'Markerface','white','linewidth',1.0);
% hold on;
% grid on;
% xlim([min(F(n1:n2,1)) max(F(n1:n2,1))]);
% xlabel('time(s)')
% ylabel('V_x(m/s)')
% set(gca,'FontName','Times New Roman' ,'FontSize', 24)
% set(get(gca,'XLabel'),'FontName','Times New Roman','Fontsize',24)
% set(get(gca,'YLabel'),'FontName','Times New Roman','Fontsize',24)
% % title('Velocity in x direction','FontName','Times New Roman',,Frontsize,,24)
figure(4)
subplot(2,2,3)
plot(F(n1:n2,1),Xy(n1:n2),'r-','Markersize',7,'Markerface','white','linewidth',2.0);
hold on;
grid on;
xlim([min(F(n1:n2,1)) max(F(n1:n2,1))]);
xlabel('time(s)')
ylabel('X_y(m)')
set(gca,'FontName','Times New Roman', 'FontSize', 24)
set(get(gca,'XLabel'),'FontName','Times New Roman','Fontsize',24)
set(get(gca,'YLabel'),'FontName','Times New Roman','Fontsize',24)
% title('Displacement in y direction','FontName','Times New Roman','Fontsize',24)
% figure(4)
% subplot(2,3,5)
% plot(F(n1:n2,1),Vy(n1:n2),'r-','Markersize',7,'Markerface','white','linewidth',1.0);
% hold on;
% grid on;
% xlim([min(F(n1:n2,1)) max(F(n1:n2,1))]);
% xlabel('time(s)')
% ylabel('V_y(m/s)')
% set(gca,'FontName','Times New Roman', 'FontSize', 24)
% set(get(gca,'XLabel'),'FontName','Times New Roman','Fontsize',24)
% set(get(gca,'YLabel'),'FontName','Times New Roman','Fontsize',24)
% % title('Velocity in y direction','FontName','Times New Roman','Fontsize',24)
figure(4)
subplot(2,2,2)
plot(F(n1:n2,1),Dx(n1:n2),'b-','Markersize',7,'Markerface','white','linewidth',2.0);
hold on;
grid on;
xlim([min(F(n1:n2,1)) max(F(n1:n2,1))]);
xlabel('time(s)')
ylabel('\Delta_x(mm)')
set(gca,'FontName','Times New Roman', 'FontSize', 24)
set(get(gca,'XLabel'),'FontName','Times New Roman','Fontsize',24)
set(get(gca,'YLabel'),'FontName','Times New Roman','Fontsize',24)
% title('additional feed in x direction','FontName','Times New Roman','Fontsize',24)
figure(4)
subplot(2,2,4)
plot(F(n1:n2,1),Dy(n1:n2),'r-','Markersize',7,'Markerface','white','linewidth',2.0);
hold on;
grid on;
xlim([min(F(n1:n2,1)) max(F(n1:n2,1))]);
xlabel('time(s)')
ylabel('\Delta_y(mm)')
set(gca,'FontName','Times New Roman', 'FontSize', 24)
set(get(gca,'XLabel'),'FontName','Times New Roman','Fontsize',24)
set(get(gca,'YLabel'),'FontName','Times New Roman','Fontsize',24)
% title('additional feed in y direction','FontName','Times New Roman','Fontsize',24)

%%�����϶�̬��м������������ϵ��
%%ע�������г��β���ʹ�ã����������һ�ܵģ��������ڵĵ�һ������ʹ�ã�
FF=F(Ns+1:2*Ns,:);
NB=Nb-1;%%�����г����ֵĳ���
Nv=Dn-2*NB;%%��Ч��ĸ���
%%�������۽�����+���ӽ�����
m=floor(m/Ns);
Fk=zeros(6,m);%%�洢����������ϵ���Ľ��
for j=1:1:m-1%%��1��ʼȥ����һ������
for i=1:1:Nv
    C=Cst+(i+NB)*Dc;
    fi(i)=fe*sin(C)*sin(k);%%ideal feed peer tooth
    fa(i)=fi(i)+sin(k)*sin(C)*Dx(j*Ns+i+NB)+sin(k)*cos(C)*Dy(j*Ns+i+NB);
end
M=ones(Nv,2);
M(:,1)=fa'*db;
M(:,2)=M(:,2)*ds;
D=[M,zeros(Nv,2),zeros(Nv,2);zeros(Nv,2),M,zeros(Nv,2);zeros(Nv,2),zeros(Nv,2),M];%%ǰ��ϵ������
Fb=[F(j*Ns+1+NB:j*Ns+Nv+NB,2);F(j*Ns+1+NB:j*Ns+Nv+NB,3);F(j*Ns+1+NB:j*Ns+Nv+NB,4)];%%�Ҳ������������
A=D'*D;%%A^T*A,����������
B=D'*Fb;%%A^T*F���Ҳ��������
Fk(:,j)=A\B;
end

% xlswrite('BCCC.xlsx',Fk,6);
figure(10)
% subplot(1,2,1)
plot(Dt:Dt:Nv*Dt,fi,'b+-','Markersize',7,'Markerface','white','linewidth',2.0);
grid on;
hold on;
xlabel('time(s)')
ylabel('Thickness(mm)')
set(gca,'FontName','Times New Roman', 'FontSize', 24)
set(get(gca,'XLabel'),'FontName','Times New Roman','Fontsize',24)
set(get(gca,'YLabel'),'FontName','Times New Roman','Fontsize',24)
% title('Ideal undeformed chip thickness','FontName','Times New Roman','Fontsize',24)
% subplot(1,2,2)
plot(Dt:Dt:Nv*Dt,fa,'r+-','Markersize',7,'Markerface','white','linewidth',2.0)
grid on;
hold on;
xlabel('time(s)')
% ylabel('h_ac(mm)')
set(gca,'FontName','Times New Roman', 'FontSize', 24)
set(get(gca,'XLabel'),'FontName','Times New Roman','Fontsize',24)
set(get(gca,'YLabel'),'FontName','Times New Roman','Fontsize',24)
legend('h','h_a_c','FontName','Times New Roman','Frontsize',24)
% title('Actual undeformed chip thickness','FontName','Times New Roman','Fontsize',24)

figure(11)
subplot(2,2,1)
plot(1:1:m,Fk(1,:),'r+-','Markersize',7,'Markerface','white','linewidth',3.0);
hold on;
grid on;
xlabel('Number of cycle')
ylabel('Ktc(N/mm^2)')
set(gca,'FontName','Times New Roman', 'FontSize', 24)
set(get(gca,'XLabel'),'FontName','Times New Roman','Fontsize',24)
set(get(gca,'YLabel'),'FontName','Times New Roman','Fontsize',24)
title('Tangential shearing coefficient','FontName','Times New Roman','Fontsize',24);
subplot(2,2,2)
plot(1:1:m,Fk(3,:),'r+-','Markersize',7,'Markerface','white','linewidth',3.0);
hold on;
grid on;
xlabel('Number of cycle')
ylabel('Krc(N/mm^2)')
set(gca,'FontName','Times New Roman', 'FontSize', 24)
set(get(gca,'XLabel'),'FontName','Times New Roman','Fontsize',24)
set(get(gca,'YLabel'),'FontName','Times New Roman','Fontsize',24)
title('Radial shearing coefficient','FontName','Times New Roman','Fontsize',24);
% subplot(2,3,3)
% plot(1:1:m,Fk(5,:),'r+-','Markersize',7,'Markerface','white','linewidth',3.0);
% hold on;
% grid on;
% xlabel('Number of cycle')
% ylabel('Kac(N/mm^2)')
% set(gca, 'FontSize', 20)
% set(get(gca,'XLabel'),'Fontsize',20)
% set(get(gca,'YLabel'),'Fontsize',20)
% title('Axial shearing coefficient');

subplot(2,2,3)
plot(1:1:m,Fk(2,:),'b+-','Markersize',7,'Markerface','white','linewidth',3.0);
hold on;
grid on;
xlabel('Number of cycle')
ylabel('Kte(N/mm)')
set(gca,'FontName','Times New Roman', 'FontSize', 24)
set(get(gca,'XLabel'),'FontName','Times New Roman','Fontsize',24)
set(get(gca,'YLabel'),'FontName','Times New Roman','Fontsize',24)
title('Tangential edge coefficient','FontName','Times New Roman','Fontsize',24);
subplot(2,2,4)
plot(1:1:m,Fk(4,:),'b+-','Markersize',7,'Markerface','white','linewidth',3.0);
hold on;
grid on;
xlabel('Number of cycle')
ylabel('Kre(N/mm)')
set(gca,'FontName','Times New Roman', 'FontSize', 24)
set(get(gca,'XLabel'),'FontName','Times New Roman','Fontsize',24)
set(get(gca,'YLabel'),'FontName','Times New Roman','Fontsize',24)
title('Radial edge coefficient','FontName','Times New Roman','Fontsize',24);
% subplot(2,3,6)
% plot(1:1:m,Fk(6,:),'b+-','Markersize',7,'Markerface','white','linewidth',3.0);
% hold on;
% grid on;
% xlabel('Number of cycle')
% ylabel('Kae(N/mm)')
% set(gca, 'FontSize', 20)
% set(get(gca,'XLabel'),'Fontsize',20)
% set(get(gca,'YLabel'),'Fontsize',20)
% title('Axial edge coefficient');