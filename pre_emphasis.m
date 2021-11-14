clc;
clear all;
close all;
f1=25;
f2=1000;
t=0:(1/(1*f1)):(2/f1);
lf=2*cos(2*pi*f1*t);
hf=2*sin(2*pi*f2*t);
%premphasis
h=[1 -0.95]
freqz(h);
zoom on;
grid on;
title('Freq response');

%attenuation of low freq signal
y=filter(h,1,lf);
figure;
plot(lf,'b');
hold on;
plot(y,'r');
zoom on;
grid on;
legend('Input','output');
title('Attenuation of low frequncy signal');

%attenuation of high freq signal
y=filter(h,1,hf);
figure;
plot(hf,'b');
hold on;
plot(y,'r');
zoom on;
grid on;
legend('Input','output');
title('Attenuation of high frequncy signal');

%chirp signal
t=0:(1/1e3):10;
fo=10;
f1=400;
y=chirp(t,fo,10,f1,'logarithmic');
sound(y);
x=filter(h,1,y);
sound(x);
figure;
plot(y,'b');
hold on;
plot(x,'r');
zoom on;
grid on;
legend('Input','Output');
title('Attenuation of low frequncy signal, Enhancement of high frequncy signal');
