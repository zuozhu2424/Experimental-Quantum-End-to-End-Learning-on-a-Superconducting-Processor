clear all
close all
figure(1)
subplot(4,1,1)
load('MNIST_check')
histogram(x1,100)
hold on
histogram(x2,100)
%xlim([-1,1])
legend('digit 2','digit 4')
ylabel('sample number')
subplot(4,1,2)
load('input1_check')
histogram(x1,100)
hold on
histogram(x2,100)
%xlim([-1,1])
ylabel('sample number')
load('input2_check')
subplot(4,1,3)
histogram(x1,100)
hold on
histogram(x2,100)
%xlim([-1,1])
ylabel('sample number')
load('input3_check')
subplot(4,1,4)
histogram(x1,100)
hold on
histogram(x2,100)
%xlim([-1,1])
ylabel('sample number')
xlabel('projected points')

