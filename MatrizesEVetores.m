clc;
clear all;

% Crie um vetor de uma linha
vetor1 = [1 2 3];
% Crie um vetor de uma coluna
vetor2 = [1; 2; 3];
% Crie um vetor de uma coluna usando a transposta de uma linha
vetor3 = [1 2 3]';
% Crie uma matriz 2x5
vetor4 = [1 2 3 4 5; 1 2 3 4 5];
% Crie um vetor de uma linha com apenas o número 1
vetor5 = ones(1, 3);
% Crie uma coluna de vetores com todos com o mesmo valor
% Use o valor de pi
vetor6 = ones(3,1)*pi;
% Crie uma matriz com números aleatórios
matriz = randn(2,4);
% Calcule a transposta dessa matriz e guarde ela em uma nova matriz
matrizT = matriz';
% Crie uma matriz quadrada
A = [1 2; 0 3];
% Calcule a sua inversa
AInv1 = A^(-1);
AInv2 = inv(A);
% Multiplique a sua matriz pela sua inversa
B = A*inv(A);
% Calcule os autovalores e autovetores dessa matriz
autovalores = eig(A);
[AutVetor, AutoValor] = eig(A);
%Testando a equaçãod e autovalores e autovetores
M1 = A*AutVetor;
M2 = AutVetor*AutoValor;
R = det(M1 - M2)



