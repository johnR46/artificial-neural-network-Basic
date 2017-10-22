clear all
close all
clc
%Linear network
load train_letters
p=[T U];
t=targets;
net = newlin(minmax(p),1)
%train
net.trainParam.epochs=1000;
net.trainParam.goal=1e-6;
net = train(net,p,t)
%test  
load test_letters
a=sim(net,[T_odd U_odd])