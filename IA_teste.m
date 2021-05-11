% Entrada de dados

input = Bell1;
target = Resultado;

net = perceptron;
net = configure(net, input, target);
view(net)

