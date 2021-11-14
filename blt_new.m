clc;
close all;
clear all;

ohm = -50:0.001:50;
T=1;
w=((2/T)*(atan(ohm*T/2)));
subplot(1,3,1);
plot(ohm,w,'r');
T=2;
subplot(1,3,2)
plot((2/T)*(tan(ohm*T/2)));
subplot(1,3,3);
plot(ohm,w,'g');
W = -3:0.001:3;
ohm=(2/T)*(tan(ohm*T/2));
title('BLT');
xlabel('W');
ylabel('w');

