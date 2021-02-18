% Limpeza da command window e de dados
clc;
clear all; 

% Inserção de dados
%estado = input('Insira o estado quântico que deseja verificar a separabilidade: ');

% Cálculo da matriz densidade
%m_dens = kron(estado,conj(estado)');
m_dens = [1 0 0 0; 0 1 0 0; 0 0 1 0; 0 0 0 1]*0.25;

% Cálculo PPT
% Transposição parcial em relação ao sistema A
a1 = [m_dens(1,3:4); m_dens(2,3:4)];
a2 = [m_dens(3,1:2); m_dens(4,1:2)];
A1 = a1';
A2 = a2';
B1 = [m_dens(1,1:2); m_dens(2,1:2)];
B2 = [m_dens(3,3:4); m_dens(4,3:4)];
m_dens_tr = [B1 A1; A2 B2];
% Calculando os autovalores
Aut = eig(m_dens_tr);
% Definindo se o estado é emaranhado
if (Aut(1)<0)
    autv_neg=1;
elseif (Aut(2)<0)
    autv_neg=1;    
elseif (Aut(3)<0)
    autv_neg=1;    
elseif (Aut(4)<0)
    autv_neg=1;    
else 
    autv_neg=0;
end
if (autv_neg == 1)
    disp('Autovalores:');
    disp(Aut);
    disp('Pelo critério PPT o estado é emaranhado.');
else
    disp('Autovalores:');
    disp(Aut);
    disp('Pelo crtério PPT o estado pode ser separável ou não.');
end
