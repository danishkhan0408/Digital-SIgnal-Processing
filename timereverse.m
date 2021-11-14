%program for time reversal
clc;
clear all;
close all;

%time to freq: dft
x=input('Enter the sequence');
N1=length(x);
X=zeros(1,N1);
Y=zeros(1,N1);
for k=0:N1-1
    for n=0:N1-1
        X(k+1)= X(k+1)+(x(n+1)*exp(-2i*pi*k*n/N1));
    end
end

%freq reversal
Y(1)=X(1);
for i=0:N1-2
    Y(i+2)=X(N1-i);
end

%freq to time: idft
y=zeros(1,N1);
for k=0:N1-1
    for n=0:N1-1
        y(k+1)= y(k+1)+(Y(n+1)*exp(2i*pi*k*n/N1));
    end
    y(k+1)=y(k+1)/N1;
end
disp('input:')
disp(x);
disp('output')
disp(y);
