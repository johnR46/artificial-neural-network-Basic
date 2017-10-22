%Backprogation to pattern recognition problem (Alphabet).

[Al,T]=prprob;
%prprop is pattern recognition problem data for nnet toolbox demo
%All demos data of nnet toobox are on path \toolbox\nnet\nndemos 
%of the installation directory, for example
%C:\Program Files\MATLAB\R2009a\toolbox\nnet\nndemos

net=newff(minmax(Al),[15 26],{'logsig','purelin'},'traingdx');
net.trainParam.epochs=1000
net.trainParam.goal=0.001
net.trainParam.show=1

%train
net = train(net,Al,T);

%test for B with the same training data
output=sim(net,Al(:,2));
[m,A_Id]=max(output)

B = Al(:,2);
plotchar(B)
%test for Z with the same training data
output=sim(net,Al(:,26));
[m,A_Id]=max(output)

%test for A with noise generated
Anoise=Al(:,6)+0.20*randn(size(Al(:,6)));

figure
plotchar(Anoise)
output=sim(net,Anoise);
[m,A_Id]=max(output)


