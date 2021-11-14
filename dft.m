%code for DFT
clc;
clear all;
close all;
disp('DFT')
x=input('Enter the sequence');
N1=length(x);
X=zeros(1,N1);
Y=zeros(1,N1);
for k=0:N1-1
    for n=0:N1-1
        X(k+1)= X(k+1)+(x(n+1)*exp(-2i*pi*k*n/N1));
    end
end
y=zeros(1,N1);
for k=0:N1-1
    for n=0:N1-1
        y(k+1)= y(k+1)+(X(n+1)*exp(2i*pi*k*n/N1));
    end
end
disp('Sequence');
disp(x);
disp('DFT');
disp('X');
disp(y/N1);