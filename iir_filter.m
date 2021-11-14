%IIR filter design
clear all;
close all;
clc;

%Design second order butterworth filter
b=1;
a=[1,sqrt(2),1];
Wc=0.9;
N=2; %order of the filter
[b,a]=butter(N,Wc);
disp('Hs=');    
tf(b,a); %Transfer function
T=1;


%Impulse Invariance
[bz,az]=impinvar(b,a,T);
tf(bz,az,T);
[Ha,Wa]=freqs(b,a,512);
[Hz,Wz]=freqz(bz,az,512);
subplot(2,2,1);

plot((Wa/(2*pi)),20*log(abs(Ha)),'r');
hold all;
xlabel('Frequency W');
ylabel('Gain in dB');
title('Impulse Invariance');
plot((Wz/(2*pi)),20*log(abs(Hz)),'g');

subplot(2,2,2);
zz=roots(bz);
pp=roots(az);
zplane(zz,pp);


%Bilinear Transformation
[bz,az]=bilinear(b,a,T);
tf(bz,az,T);
[Ha1,Wa1]=freqs(b,a,512);
[Hz1,Wz1]=freqz(bz,az,512);
subplot(2,2,3);
plot((Wa1/(2*pi)),20*log(abs(Ha1)));
hold all;
xlabel('Frequency W');
ylabel('Gain in dB');
title('Bilinear Transformation');
plot((Wz1/(2*pi)),20*log(abs(Hz1)));

subplot(2,2,4);
zz=roots(bz);
pp=roots(az);
zplane(zz,pp);
