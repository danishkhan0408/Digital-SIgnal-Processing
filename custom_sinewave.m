%
clear all;
close all;
clc;
W=input('enter frequency in rad');
A=input('enter amplitude');
T=input('enter sample intervals');
N=input('enter number of samples');
X=SineWave(W,A,T,N);
plot(X);