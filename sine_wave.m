%
clear all;
close all;
clc;
n=1:100;
t=0.01;
X=sin(10*pi*n*t);
Y=sin(10*pi*n*t);
Z=X+Y;
w=X-Y;

hold on;
 subplot(2,2,1);
 plot (X);
  subplot(2,2,2);
 plot (Y);
 subplot(2,2,3);
  plot (Z);
 subplot(2,2,4);
 plot (w);
%stem(X)
%bar(X)
%xlabel('samples');
%ylabel('amplitude');
%title('sine wave');
%grid on;
%figure;
 %plot (Y);