% Limpeza da command window e de dados
clc;
clear all;

% Dispositivos ópticos
% Variáveis importantes
x1 = pi/8;
x2 = 0;
y1 = pi/8;
y2 = 0;
y3 = -pi/2;

%HWP
HWP = [[cos(2*x1), sin(2*x1)]; [sin(2*x1), -cos(2*x1)]];

%QWP
QWP = [[cos(2*x2)^2-1i*(sin(2*x2))^2, cos(2*x2)*sin(2*x2)*(1+1i)];...
    [cos(2*x2)*sin(2*x2)*(1+1i), -1i*(cos(2*x2))^2+(sin(2*x2))^2]];

%DP
DP = [[cos(2*y1), sin(2*y1)]; [sin(2*y1), -cos(2*y1)]];

%CL
CL = [[cos(y2)^2+(exp(1i*y3))*(sin(y2))^2, cos(y2)*sin(y2)*(exp(1i*y3)-1)];...
    [(exp(1i*y3)-1)*sin(y2)*cos(y2), exp(1i*y3)*(cos(y2))^2+(sin(y2))^2]];

%Beam Splitter matrix 50/50
BS = 1/sqrt(2)*[1 1; 1 -1];


%Matrizes básicas
%Matriz identidade
I = [1 0; 0 1];
%Matrizes de Pauli
s0 = I;
s1 = [0 1;1 0];
s2 = [0 -1i; 1i 0];
s3 = [1 0; 0 -1];

% Bases de medida
H = [1;0];
V = [0;1];
h = [1;0];
v = [0;1];
D = 1/sqrt(2)*[1;1];
A = 1/sqrt(2)*[1;-1];
R = 1/sqrt(2)*[1;-1i];
L = 1/sqrt(2)*[1;1i];


%Variáveis para projeções
HH = kron(H,H);
HV = kron(H,V);
VH = kron(V,H);
VV = kron(V,V);

DD = kron(D,D);
DA = kron(D,A);
AD = kron(A,D);
AA = kron(A,A);

RR = kron(R,R);
RL = kron(R,L);
LR = kron(L,R);
LL = kron(L,L);

HD = kron(H,D);
HA = kron(H,A);
HR = kron(H,R);
HL = kron(H,L);

VD = kron(V,D);
VA = kron(V,A);
VR = kron(V,R);
VL = kron(V,L);

RD = kron(R,D);
RA = kron(R,A);
RV = kron(R,V);
RH = kron(R,H);

LD = kron(L,D);
LA = kron(L,A);
LV = kron(L,V);
LH = kron(L,H);

DH = kron(D,H);
DV = kron(D,V);
DR = kron(D,R);
DL = kron(D,L);

AH = kron(A,H);
AV = kron(A,V);
AR = kron(A,R);
AL = kron(A,L);


% Input de estados
E00 = kron(H,H);
Bell1 = 1/sqrt(2)*(kron(H,h) + kron(V,v));

Input = E00;

% Circuito: probabilidades
PHH = ((HH)'*Input*HH)'*((HH)'*Input*HH);
PHV = ((HV)'*Input*HV)'*((HV)'*Input*HV);
PVH = ((VH)'*Input*VH)'*((VH)'*Input*VH);
PVV = ((VV)'*Input*VV)'*((VV)'*Input*VV);

PHD = ((HH)'*kron(I,DP)*Input*HH)'*((HH)'*kron(I,DP)*Input*HH);
PHA = ((HV)'*kron(I,DP)*Input*HV)'*((HV)'*kron(I,DP)*Input*HV);
PVD = ((VH)'*kron(I,DP)*Input*VH)'*((VH)'*kron(I,DP)*Input*VH);
PVA = ((VV)'*kron(I,DP)*Input*VV)'*((VV)'*kron(I,DP)*Input*VV);

PHR = ((HH)'*kron(I,DP*CL)*Input*HH)'*((HH)'*kron(I,DP*CL)*Input*HH);
PHL = ((HV)'*kron(I,DP*CL)*Input*HV)'*((HV)'*kron(I,DP*CL)*Input*HV);
PVR = ((VH)'*kron(I,DP*CL)*Input*VH)'*((VH)'*kron(I,DP*CL)*Input*VH);
PVL = ((VV)'*kron(I,DP*CL)*Input*VV)'*((VV)'*kron(I,DP*CL)*Input*VV);

%%%%%% CONTINUAR NO PDD %%%%%%%


% Produto tensorial entre as matrizes de Pauli
s00 = kron(s0,s0);

% Parâmetros de Stokes em termos de probabilidades
S00 = PHH+PHV+PVH+PVV;

% Matriz densidade calculada através das probalidades de projeção
Rho = (1/4)*(S00*s00);

% Matriz densidade do estado E00 = |00> e Bell1
rho_00 = E00*(E00)';
rho_Bell1 = Bell1*(Bell1)';



