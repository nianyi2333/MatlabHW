clear,clc,close all;
format shortE
Msun = 1.9891e30;
Lsun = 3.845e33;
m = 1;
for n = linspace(0.1,30,1000)
L(m,1)= n
    if n<=0.43
        L(m,2)=0.23*(n^2.3)*Lsun;
    elseif 0.43<=n<2
        L(m,2)=(n^4)*Lsun;
    elseif 2<=n<20
        L(m,2)=1.5*(n^3.5)*Lsun;
    else
        L(m,2)=3200*n*Lsun
    end
m = m+1;
end
L
display erg/s;
