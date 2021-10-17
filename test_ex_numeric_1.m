%Script de testare Metoda lui Laguerre

syms X;%Declaram X ca pe o variabila
P = 2 * X^5 - 10 * X^4 - 5 * X^3 + 7 * X^2 - 1 * X + 2%functie polinomiala
n = 5;%Gradul polinomului


P_2 = [2 -10 -5 7 -1 2];%Polinomul P scris ca vector
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

%%%%%%%%---Figura 2---%%%%%%%%%%% obervam 4/5 radacini
figure
a = -1.2:0.03:1.1;
b = -1.2:0.03:1.1;          %Pentru a putea vizualiza radacinile complexe trebuie 
[A,B] = meshgrid(a,b);    %sa plotam polinomul si pe axa imaginara de unde rezulta o forma "3D"
y = 2*(A+1i*B).^5 - 10*(A+1i*B).^4 -5*(A+1i*B).^3 + 7*(A+1i*B).^2-1*(A+1i*B) + 2;
surfc(a,b,abs(y))
xlabel('Real(x)')
ylabel('Imag(x)')
zlabel('P(x)')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%---Figura 2.1---%%%%%%%%%%% pentru a vizualiza ultima radacina
figure
a = 5:0.03:6;
b = -0.5:0.03:0.5;          %Pentru a putea vizualiza radacinile complexe trebuie 
[A,B] = meshgrid(a,b);    %sa plotam polinomul si pe axa imaginara de unde rezulta o forma "3D"
y = 2*(A+1i*B).^5 - 10*(A+1i*B).^4 -5*(A+1i*B).^3 + 7*(A+1i*B).^2-1*(A+1i*B) + 2;
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

a = -1.2:0.05:1.1;
b = -1.2:0.05:1.1; 
[A,B] = meshgrid(a,b);
y =  2*(A+1i*B).^5 - 10*(A+1i*B).^4 -5*(A+1i*B).^3 + 7*(A+1i*B).^2-1*(A+1i*B) + 2;
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

a = 5:0.06:6;
b = -0.5:0.06:0.5;          %Pentru a putea vizualiza radacinile complexe trebuie 
[A,B] = meshgrid(a,b);    %sa plotam polinomul si pe axa imaginara de unde rezulta o forma "3D"
y = 2*(A+1i*B).^5 - 10*(A+1i*B).^4 -5*(A+1i*B).^3 + 7*(A+1i*B).^2-1*(A+1i*B) + 2;
surfc(a,b,abs(y))
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
