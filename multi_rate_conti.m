clc;
clear all;
close all;

%for continous input
d=input('Enter the decimation factor');
i=input('Enter the interpolation factor');
a=input('Enter the amplitude');
fin=input('Enter the input frequency');
t=0:0.00001:(1/fin);
x=a*cos(2*pi*fin*3*t);  % n=3 ie for 3 cycles
y=x(1:d:length(x));

subplot(5,1,1);
stem(x);
title('Input');

subplot(5,1,2);
stem(y);
title('Output');

y=downsample(x,d);
subplot(5,1,3);
stem(y);
title('Downsampling');
xlabel('Decimation factor');
ylabel('Output');

Q=zeros(1,i*length(x));
Q(1:i:length(Q))=x; %padding zeros
subplot(5,1,4);
stem(Q);
title('Zero padded signal')
subplot(5,1,5);

w=upsample(x,i);
stem(w);
title('Upsampling');
xlabel('Interpolation factor');
ylabel('Output');

