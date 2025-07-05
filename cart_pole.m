% Inverted Pendulum closed loop scheme with PID controller 
%
% Author : @ Zenia Fragaki
%
%------------------------------------------------------------
%
%           SYSTEM(PLANT)
%
% ----- Clear CMD , Workspace and Close any open tabs--------

clc
clear;
close all;

%------------Parameters------------------%Source : https://ctms.engin.umich.edu/CTMS/index.php?example=InvertedPendulum&section=SystemModeling
M=0.5;                                   %Mass of the cart
m=0.2;                                   %Mass of the pendulum
b=0.1;                                   %coefficient of friction for cart
l=0.3;                                   %length to pendulum center of mass
I=0.006;                                 %mass moment of inertia of the pendulum
q = (M+m)*(I+m*l^2)-(m*l)^2;
ts=0.01;
g=9.8;
%----------System Equations-------------

%----------Transfer Functions-----------
s=tf('s');

P_cart = (((I+m*l^2)/q)*s^2 - (m*g*l/q))/(s^4 + (b*(I + m*l^2))*s^3/q - ((M + m)*m*g*l)*s^2/q - b*m*g*l*s/q);
P_pend = (m*l*s/q)/(s^3 + (b*(I + m*l^2))*s^2/q - ((M + m)*m*g*l)*s/q - b*m*g*l/q);

%---------State Space Equations---------


%----------PID Controller----------------------------

%----------Time(t)-domain-----------------------------

% function [u,I,e_prev]=pid_c(Kp,Ki,Kd,ek,e_prev,I_prev)
% 
% I=I_prev+ts*ek;                 %Forward Euler's method
% D=(ek-e_prev)/ts;               %Backward difference
% P=Kp*ek;
% 
% u=P+Ki*I+Kd*D;
% 
% e_prev=ek;
% 
% end

%------S-domain (transfer function)------------------------

Kp=100;
Ki=0.1;
Kd=10;

Gc=Kp+Ki/s+Kd*s;

%------ PID Matlab object ---------------------------------

% Cpid=pid(Kp,Ki,kd);

%----------------------Closed-Loop-------------------------

sys=feedback(P_pend,Gc);

%--------------------Settings------------------------------

T=0:ts:20;
impulse(sys,T)
title("Inverted Pendulum Angle Control");
ylabel("Angle Theta (radians)")
xlabel("Time")
yline(0,'--r')
axis([0 10 -2.5 2.5 ])
legend('Controlled Angle','Refernce Angle')

%---------------------------------------------------------