clc;
clear all;
% Vetor que será de composto
a = [4 6]';
% Vetor de referência
b = [8 2]';
% Equação: a = (a projeção em b) + (a perpendicular b)
alfa = a'*b/(b'*b);
projAB = alfa *b;
AperpB = a-projAB;

% Plot dos vetores
figure(1), clf
plot([0 a(1)],[0 a(2)],'b','linew',5) % Vetor original a
hold on
plot([0 b(1)],[0 b(2)],'g','linew',5) % Vetor original b

% Plot das componentes
plot([0 projAB(1)],[0 projAB(2)],'m--','linew',3) % ab paralelo
hold on
plot([0 AperpB(1)],[0 AperpB(2)],'k:','linew',3) % ab perpendicular
legend({'a';'b';'ab paralelo';'ab perpendicular'})
axis([-1 1 -1 1 ]*max([norm(a) norm(b)]))
axis square
