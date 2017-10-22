clear all
close all
clc
%Example of perceptron

points = [0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1;
          1 1 1 1 0 0 0 1 1 1 1 1 1 0 0 0 1 1 1 1;
          1 1 1 1 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1;
          1 0 0 1 1 0 0 1 1 1 1 1 0 0 0 1 0 0 0 1;
          1 1 1 1 1 0 0 0 1 1 1 1 0 0 0 1 1 1 1 1;
          1 1 1 1 1 0 0 0 1 1 1 1 1 0 0 1 1 1 1 1;
          1 1 1 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1;
          1 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1;
          1 1 1 1 1 0 0 1 1 1 1 1 0 0 0 1 0 0 0 1;
          1 1 1 1 1 0 0 1 1 0 0 1 1 0 0 1 1 1 1 1];

group = [1 0 0 0 0 0 0 0 0 0;
         0 1 0 0 0 0 0 0 0 0;
         0 0 1 0 0 0 0 0 0 0;
         0 0 0 1 0 0 0 0 0 0;
         0 0 0 0 1 0 0 0 0 0;
         0 0 0 0 0 1 0 0 0 0;
         0 0 0 0 0 0 1 0 0 0;
         0 0 0 0 0 0 0 1 0 0;
         0 0 0 0 0 0 0 0 1 0;
         0 0 0 0 0 0 0 0 0 1];

p=points'
t=group'

net = newp(minmax(p),10); %minmax will auto set min and max of p 

net.trainParam.epochs = 10;

net= train(net,p,t); %must replace net parameter

%test network with an old input
%can compare with target t
a=sim(net,p)

