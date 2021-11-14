function Y =SineWave(P,Q,R,S)
Y=[];
for i=1:S;
    Y(i)=Q*sin(P*i*R);
end
end