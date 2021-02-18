clc;
clear all;
% Plot vetores 2D e 3D
a = [1 2]'; % Vetor 2D
b = [1 3 4]'; % Vetor 3D
figure(1), clf
plot([0, a(1)],[0, a(2)],'b','linew',3) % Plot 2D
figure(2), clf
plot3([0, b(1)],[0, b(2)],[0, b(3)],'b','linew',3) % Plot 3D

