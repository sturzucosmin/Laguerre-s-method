%Script de testare Metoda lui Laguerre

syms X;%Declaram X ca pe o variabila
P = -X^6 + X^5 + 2 * X^4 - 2 * X^3 + X^2 + 2 * X - 1%functie polinomiala
n = 6;%Gradul polinomului


P_2 = [-1 1 2 -2 1 2 -1];%Polinomul P scris ca vector
disp('Radacinile polinomului calculate cu functia "roots()" pentru verificare solutie');
r = roots(P_2)%Radacinile polinomului calculate cu functie din "Matlab" pentru verificare 

disp('Afisare din functie: ');
rez = laguerre(P_2);%Rezultatul functiei 
disp('  ');
disp('Afisare vector returnat de functie cu radacinile polinomului');
rez


%%%%%%%%%---Figura 1---%%%%%%%%%%%%
figure
axis([-3,7,-1.5,2]) 
hold on; fplot(P)     %Grafic polinom si radacini
xlabel('x')           %Pentru a se vedea intersectia cu axele
ylabel('P(x)')
scatter(real(r),imag(r),'filled','red')
grid on;
%%%%%%%%%%%%%%%%%%%%

%%%%%%%%---Figura 2---%%%%%%%%%%% observam 3/6 radacini
figure
a = 0:0.03:1;
b = -1:0.03:1;          %Pentru a putea vizualiza radacinile complexe trebuie 
[A,B] = meshgrid(a,b);    %sa plotam polinomul si pe axa imaginara de unde rezulta o forma "3D"
y = -1*(A+1i*B).^6 + 1*(A+1i*B).^5 + 2*(A+1i*B).^4 -2*(A+1i*B).^3 + 1*(A+1i*B).^2+2*(A+1i*B) - 1;
surfc(a,b,abs(y))
xlabel('Real(x)')
ylabel('Imag(x)')
zlabel('P(x)')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%---Figura 2.1---%%%%%%%%%%% observam 2/6 radacini
figure
a = -1.5:0.03:-0.5;
b = -0.5:0.03:0.5;          %Pentru a putea vizualiza radacinile complexe trebuie 
[A,B] = meshgrid(a,b);    %sa plotam polinomul si pe axa imaginara de unde rezulta o forma "3D"
y = -1*(A+1i*B).^6 + 1*(A+1i*B).^5 + 2*(A+1i*B).^4 -2*(A+1i*B).^3 + 1*(A+1i*B).^2+2*(A+1i*B) - 1;
surfc(a,b,abs(y))
xlabel('Real(x)')
ylabel('Imag(x)')
zlabel('P(x)')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%---Figura 2.2---%%%%%%%%%%% observam 1/6 radacini
figure
a = 1.4:0.02:2.3;
b = -0.5:0.02:0.5;          %Pentru a putea vizualiza radacinile complexe trebuie 
[A,B] = meshgrid(a,b);    %sa plotam polinomul si pe axa imaginara de unde rezulta o forma "3D"
y = -1*(A+1i*B).^6 + 1*(A+1i*B).^5 + 2*(A+1i*B).^4 -2*(A+1i*B).^3 + 1*(A+1i*B).^2+2*(A+1i*B) - 1;
surfc(a,b,abs(y))
xlabel('Real(x)')
ylabel('Imag(x)')
zlabel('P(x)')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%---Figura 3---%%%%%%%%%%%% -> Suprapunem fig1 si fig2
figure
axis([-3,7,-1.5,2])
hold on; fplot(P)
xlabel('x')
ylabel('P(x)')
scatter(real(r),imag(r),'filled','red')

grid on;

a = 0:0.03:1;
b = -1:0.03:1;  
[A,B] = meshgrid(a,b);
y =  -1*(A+1i*B).^6 + 1*(A+1i*B).^5 + 2*(A+1i*B).^4 -2*(A+1i*B).^3 + 1*(A+1i*B).^2+2*(A+1i*B) - 1;
surfc(a,b,abs(y))
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%---Figura 3.1---%%%%%%%%%%%% -> Suprapunem fig1 si fig2.1
figure
axis([-3,7,-1.5,2])
hold on; fplot(P)
xlabel('x')
ylabel('P(x)')
scatter(real(r),imag(r),'filled','red')

grid on;

a = -1.5:0.05:-0.5;
b = -0.5:0.05:0.5;    
[A,B] = meshgrid(a,b);
y =  -1*(A+1i*B).^6 + 1*(A+1i*B).^5 + 2*(A+1i*B).^4 -2*(A+1i*B).^3 + 1*(A+1i*B).^2+2*(A+1i*B) - 1;
surfc(a,b,abs(y))
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%---Figura 3.2---%%%%%%%%%%%% -> Suprapunem fig1 si fig2.2
figure
axis([-3,7,-1.5,2])
hold on; fplot(P)
xlabel('x')
ylabel('P(x)')
scatter(real(r),imag(r),'filled','red')

grid on;

a = 1.4:0.05:2.3;
b = -0.5:0.05:0.5;    
[A,B] = meshgrid(a,b);
y =  -1*(A+1i*B).^6 + 1*(A+1i*B).^5 + 2*(A+1i*B).^4 -2*(A+1i*B).^3 + 1*(A+1i*B).^2+2*(A+1i*B) - 1;
surfc(a,b,abs(y))

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
