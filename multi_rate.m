clear all;
close all;
clc;
%For discrete input
d=input('Enter the decimation factor');
i=input('Enter the interpolation factor');

x=[1 2 3 4 5 6 7 8 9 10];
y=x(1:d:length(x));

subplot(5,1,1);
stem(x);
title('Input');

subplot(5,1,2);
stem(y);
title('Output');

y1=downsample(x,d);
subplot(5,1,3);
stem(y1);
title('Downsampling');
xlabel('Decimation factor');
ylabel('Output');

Q=zeros(1,i*length(x));
Q(1:i:length(Q))=x; %padding zeros
subplot(5,1,4);
stem(Q);
title('Zero padded signal')

w=upsample(x,i);
subplot(5,1,5);
stem(w);
title('Upsampling');
xlabel('Interpolation factor');
ylabel('Output');