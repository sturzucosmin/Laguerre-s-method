%TEMA METODE NUMERICE 2020 - Metoda lui Laguerre
%Nume: Sturzu Cosmin
%Grupa: 322AB
%Facultatea de Automatica si Calculatoare, UPB

function [Rez] = laguerre(P)

% INPUTS:
%   P -- polinom reprezentat ca vector
% OUTPUTS:
%   Rez -- radacinile polinomului


%% SOLUTION START %%

P_aux = P;

%Gradul polinomului
grad=length(P)-1;
err=1e-05;

Maxiter=100;%Numatul maxim de ieratii
x=1;%Setam o valoare initiala

rezultat = zeros(grad,1);

for n = grad:-1:1
    %Prima si a doua derivata a polinomului
    dP = polyder(P);
    d2P = polyder(dP);
    
    for k = 1:Maxiter
        
        P_xk = polyval(P,x);
        dP_xk = polyval(dP,x);
        d2P_xk = polyval(d2P,x);
        
        if abs(P_xk) < 1e-14*polyval(abs(P),abs(x)) 
          break %daca P(xk) este foarte mic iesi din bucla
        end
        
        G = dP_xk/P_xk;
        H = G^2 - d2P_xk / P_xk;
        N1 = (G+sqrt((n-1)*(n*H-G^2)));
        N2 = (G-sqrt((n-1)*(n*H-G^2)));
        N = N1;
        
        if abs(N2) > abs(N1) 
            N = N2; 
        end    %Selectam numitorul cu cea mai mare valoare in modul
        
        a = n/N;
        x = x - a;
        
        if abs(a) < err*(err+abs(x))
            break
        end
    end
    
    y = polyval(P_aux, x);%Verific solutia
    fprintf("Radacina: x = %.15f%+.15fi ---> P(x) = %.6g%+.6gi\n", real(x),imag(x),real(y),imag(y));
    Rez(n) = x;
    [P, ~] = deconv(P,[ 1,-x]);  % Impartire polinom
end


%% SOLUTION END %%
end
