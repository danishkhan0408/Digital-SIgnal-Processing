%Freq Shift
clear all;
close all;
clc;
x= input('enter input');
X=zeros(1,4);
N=length(x);
y=zeros(1,N);
z=zeros(1,N);


for k=0:N-1 %dft of x(n)
    for n=0:N-1
        X(k+1)=X(k+1)+x(n+1)*exp(-2i*pi*k*n/N);
    end;
end;


l=2;
for k=0:N-1  % X(K)*exp. term
    y(k+1)=x(k+1)*exp(2i*pi*k*l/N);
end

for n=0:N-1  % idft of y(n)
    for k=0:N-1
        z(n+1)=z(n+1)+(y(k+1)*exp(2i*pi*k*n/N))/N;
    end;
end;