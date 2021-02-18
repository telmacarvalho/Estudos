clc;
clear all

%a = '|0>'
%'|0>' = [1;0]

%dirac = (1/2^(1/2))*[1;0].*[1;0]+[0;1].*[0;1]
%d = dirac.*conj(dirac)'

k = kron([1;0],[1;0])