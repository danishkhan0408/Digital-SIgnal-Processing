clc;
close all;
clear all;

N=10
Pb=20 	%pass band attenuation
Sb=200  %stop band attenuation
Fs=500  %sampling frequency
Wc=(Pb/Sb)/2; 
Fc=Wc*(2/Fs);

%Rectangular Window
hnwin=fir1((N-1),Fc,rectwin(N));
[hnwin,fn]=freqz(hnwin,1,512,Fs);% to plot the frequency response of the filter
subplot(2,3,1);
plot(10*log(abs(hnwin)));
title('Rectangular');
xlabel('Frequency(Hz)');
ylabel('Amplitude(db)');

%Hanning Window
hnwin=fir1((N-1),Fc,hann(N));
[hnwin,fn]=freqz(hnwin,1,512,Fs);
subplot(2,3,2);
plot(10*log(abs(hnwin)));
title('Hanning');
xlabel('Frequency(Hz)');
ylabel('Amplitude(db)');

%Hamming Window
hnwin=fir1((N-1),Fc,hamming(N));
[hnwin,fn]=freqz(hnwin,1,512,Fs);
subplot(2,3,3);
plot(10*log(abs(hnwin)));
title('hamming');
xlabel('Frequency(Hz)');
ylabel('Amplitude(db)');

%Blackman Window
hnwin=fir1((N-1),Fc,blackman(N));
[hnwin,fn]=freqz(hnwin,1,512,Fs);
subplot(2,3,4);
plot(10*log(abs(hnwin)));
title('blackman');
xlabel('Frequency(Hz)');
ylabel('Amplitude(db)');

%bartlett Window
hnwin=fir1((N-1),Fc,bartlett(N));
[hnwin,fn]=freqz(hnwin,1,512,Fs);
subplot(2,3,5);
plot(10*log(abs(hnwin)));
title('bartlett');
xlabel('Frequency(Hz)');
ylabel('Amplitude(db)');

%kaiser Window
hnwin=fir1((N-1),Fc,kaiser(N));
[hnwin,fn]=freqz(hnwin,1,512,Fs);
subplot(2,3,6);
plot(10*log(abs(hnwin)));
title('kaiser');
xlabel('Frequency(Hz)');
ylabel('Amplitude(db)');
