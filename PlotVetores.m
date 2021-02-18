clc;
clear all;
% Plot 2D
% Método I
A = [0 1]';
B = [0 5]';
plot(A,B);
xlabel('x');
ylabel('y');
title('Plot vetor 2D');
% Método II
C = [1 5]';
plotv(C);
xlabel('x');
ylabel('y');
title('Plot vetor 2D');
% Plot 3D
% Método I
D = [0 0 3]';
E = [0 0 5]';
F = [0 0 7]';
plot3(D,E,F);
xlabel('x');
ylabel('y');
zlabel('z');
title('Plot vetor 3D');
% Método II
M = [0 0 3; 0 0 5; 0 0 7];
plot3(M(1,:),M(2,:),M(3,:));
xlabel('x');
ylabel('y');
zlabel('z');
title('Plot vetor 3D');
