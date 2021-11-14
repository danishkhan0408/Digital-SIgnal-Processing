clear all;
close all;
clc;
%For discrete input , input->interpolation->decimation->output
d=input('Enter the decimation factor');
i=input('Enter the interpolation factor');

x=[1 2 3 4 5 6 7 8 9 10];
subplot(3,1,1);
stem(x);
title('Input');

Q=zeros(1,i*length(x));
Q(1:i:length(Q))=x; %padding zeros

y=upsample(Q,i);
subplot(3,1,2);
stem(y,'g');
title('Upsampling');
xlabel('Interpolation factor');


%subplot(4,1,3);
%stem(Q,'R');
%title('Zero padding')
y1=downsample(y,d);
subplot(3,1,3);
stem(y1);
title('Output after decimation');
xlabel('Decimation factor');
ylabel('Output');


