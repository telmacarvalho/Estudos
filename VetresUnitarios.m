clc;
clear all;
a = [1 3]';
% Calcular o módulo desse vetor
a_modulo = norm(a);
% Novo vetor unitário na mesma direção do vetor a
a_unit = a/a_modulo;
% Confirmar que é um vetor unitário;
norm(a_unit) == 1;
norm(a_unit) - 1;
% Plot do vetor original
figure(1), clf, hold on
plot([0 a(1)],[0 a(2)],'b','linew',2) % Linew cria uma linha primitiva e o n° final
%representa a espessura da linha
% Plot do vetor unitário
plot([0 a_unit(1)],[0 a_unit(2)],'k:','linew',3) % m é a cor da linha
axis([-1 1 -1 1]*a_modulo) % ajuste da escala do gráfico
legend({'Vetor a','Vetor unitário de a'}) % legenda