% Limpeza da command window e de dados
clc;
clear all;

% Enisnando padrão AND
% X1|X2|Resultado
%  0 | 0 |       0
%  0 | 1 |       0
%  1 | 0 |       0
%  1 | 1 |       1

% Início da rede perceptron

input = [ 0 0 1 1; 0 1 0 1];
target = [0 0 0 1];

net = perceptron;
view(net)
net = configure(net, input, target);
view(net)

net = train(net, input, target);
a = net(input)