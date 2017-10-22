
clear all;
close all;
clc

p=[0 2 -2 4 -4]
t=[0 4 4 16 16]


net = newlin(minmax(p),1); %minmax will auto set min and max of p 

net.trainParam.epochs = 5000;
net.trainParam.goal = 0.001;

net= train(net,p,t); %must replace net parameter

%test network with an old input
%can compare with target t
a=sim(net,p)

% test with new input
tn=[[-1],[3]]
an=sim(net,tn)


plot(p,t,'rs','LineWidth',2,...
                       'MarkerEdgeColor','k',...
                       'MarkerFaceColor','g',...
                       'MarkerSize',10)
                   

hold on

plot(tn,an,'m*','LineWidth',2,...
                       'MarkerEdgeColor','m',...
                       'MarkerFaceColor','g',...
                       'MarkerSize',10)