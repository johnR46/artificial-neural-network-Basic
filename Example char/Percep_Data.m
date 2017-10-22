clear all
close all
clc
%Example of perceptron
%data input is in data.mat file
load data
p=points
t=group

plotpv(p,t) %plot vector

net = newp(minmax(p),1); %minmax will auto set min and max of p 
net= train(net,p,t); %must replace net parameter

%test network with an old input
%can compare with target t
a=sim(net,p);

% test with new input
tn=[[-2;-3],[0.5;4]];
an=sim(net,tn)
plotpc(net.IW{1,1},net.b{1})%plot classify, 
%must plot to the active window, defaust to the last figure
hold on
plot(-2,-3, 'or')
plot(-0.5,4, '+r')