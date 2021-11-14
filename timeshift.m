%program for time shifting
clc;
clear all;
close all;

%time to freq: dft
x=input('Enter the sequence');
l=input('Enter the amount of shift');

N1=length(x);
X=zeros(1,N1);
Y=zeros(1,N1);
for k=0:N1-1
    for n=0:N1-1
        X(k+1)= X(k+1)+(x(n+1)*exp(-2i*pi*k*n/N1));
    end
    X(k+1)= X(k+1)*exp(-2i*pi*k*l/N1);
end

%freq to time: idft
y=zeros(1,N1);
for k=0:N1-1
    for n=0:N1-1
        y(k+1)= y(k+1)+(X(n+1)*exp(2i*pi*k*n/N1));
    end
    y(k+1)=y(k+1)/N1;
end
disp('input:')
disp(x);
disp('output')
disp(y);
