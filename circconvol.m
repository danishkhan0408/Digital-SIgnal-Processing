%circular convolution
clc;
clear all;
close all;
disp('Circular conv')
x=input('Enter the first sequence');
y=input('Enter the second sequence');
M=length(x);
N=length(y);
%adding zeros
if(M>N)
    for i=N+1:M
        y(i)=0;
    end
    N=M;
end
if(N>M)
    for i=M+1:N
        x(i)=0;
    end
    M=N;
end
%time reversal y1
y1=zeros(1,N);
y1(1)=y(1);
for i=0:N-2
    y1(i+2)=y(N-i);
end
disp(y1);
z=zeros(1,N);
%multiplication to obtain z(1)
for i=1:N    
    z(1)=z(1)+x(i)*y1(i);
end
y2=zeros(1,N);
for q=2:N
    %time shifting y2
    y2=circshift(y1',1);
    y2=y2';
    disp(y2);
    %multiplication to obtain z(2)
    for i=1:N    
        z(q)=z(q)+x(i)*y2(i);
    end
    y1=y2;
end
disp('Result =');
disp(z);