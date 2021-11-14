clc;
close all;
clear all;
A=5;
f=3;
t=0:0.01:10;
x=A*sin(2*pi*f*t);
subplot(2,3,4);
plot(x)
xlabel('time');
ylabel('Amplitude');
title('Original message signal');
subplot(2,3,1);
plot(x)
xlabel('time');
ylabel('Amplitude');
title('Original message signal');
X=dct(x);
%subplot(2,2,1);
subplot(2,3,2);
stem(X);
title('DCT Spectrum');
xlabel('Coeff no');
ylabel('Amplitude');
N=length(X);
X(1,round(0.7*N):end)=0;
disp('Coeff used for DCT');
%round(0.07*N);
y=idct(X);
disp(x);
disp(y);
%Energy compaction using DFT
Xf=fft(x);
subplot(2,3,5);
stem(abs(Xf));
xlabel('Coeff no');
ylabel('Amplitude');
title('FFT Spectrum');
Xf(1,round(0.7*N):end)=0;
yf=ifft(Xf);
disp('Coeff used for FFT');
%round(N);
disp(yf);
%subplot(2,2,2);
subplot(2,3,3);
plot(x);
hold on;
plot(y);
xlabel('Coeff no');
ylabel('Amplitude');
title('Recovered signal using DCT');
subplot(2,3,6);
plot(x);
hold on;
plot(yf);
xlabel('Coeff no');
ylabel('Amplitude');
title('Recovered dignal using FFT');