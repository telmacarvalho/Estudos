clc;
clear all;
% Dois vetores do mesmo tamanho
a = [1 3];
b = [5 7];
% Implementação I
PtE1 = sum(a.*b);
% Implementação II
PtE2 = a(:)'*b(:);
% Implementação III
PtE3 = 0;
for i = 1:length(a)
    PtE3 = a(i)*b(i) + PtE3;
end
% Implementação IV
PtE4 = dot(a,b);
% Implementação V
theta = acos(dot(a,b)/(norm(a)*norm(b)));
PtE5 = norm(a)*norm(b)*cos(theta);