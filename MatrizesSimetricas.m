clear all;
clc;
A = input('Digite uma matriz quadrada: ');
Asim = A*A';
Asim - Asim';
Asim = (A+A')/2;
Asim1 = mtimes(A',A);
Asim == Asim'