%program to study sampling
clc;
close all;
clear all;
ch=input('1.Underampling\n2.Critical\n3.Oversampling\n');
switch(ch)
    case 1
        %undersampling
        t=0.1;
        n=1:100;
        x1=cos(6*pi*t*n);
        x2=cos(14*pi*t*n);
        x3=cos(26*pi*t*n);


        subplot(3,1,1);
        stem (x1);
        ylabel('amplitude')
        xlabel('samples')
        title('x1');

        subplot(3,1,2);
        stem (x2);
        ylabel('amplitude')
        title('x2');
        xlabel('samples')


        subplot(3,1,3);
        stem (x3);
        ylabel('amplitude')
        title('x3');
        xlabel('samples')

    case 2
        %critical sampling
        t=0.03;
        n=1:100;
        x1=cos(6*pi*t*n);
        x2=cos(14*pi*t*n);
        x3=cos(26*pi*t*n);

        subplot(3,1,1);
        stem (x1);
        ylabel('amplitude')
        title('x1');
        xlabel('samples')

        subplot(3,1,2);
        stem (x2);
        ylabel('amplitude')
        title('x2');
        xlabel('samples')


        subplot(3,1,3);
        stem (x3);
        ylabel('amplitude')
        title('x3');
        xlabel('samples')

    case 3
        %oversampling

        t=0.01;
        n=1:100;
        x1=cos(6*pi*t*n);
        x2=cos(14*pi*t*n);
        x3=cos(26*pi*t*n);


        subplot(3,1,1);
        stem (x1);
        ylabel('amplitude')
        title('x1');
        xlabel('samples')

        subplot(3,1,2);
        stem (x2);
        ylabel('amplitude')
        title('x2');
        xlabel('samples')


        subplot(3,1,3);
        stem (x3);
        ylabel('amplitude')
        title('x3');
        xlabel('samples')
end

