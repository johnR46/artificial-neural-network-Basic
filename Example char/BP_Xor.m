%Backprogation to XOR problem
P=[0 0 1 1;
   0 1 0 1];
T=[0 1 1 0];
%create network object
net = newff(minmax(P),[4 1],{'logsig','purelin'},'traingdx')
%train
net.trainParam.epoch=500;
net = train(net,P,T);
%test(simulate) with input pattern 
a=sim(net,P)
[a;T]