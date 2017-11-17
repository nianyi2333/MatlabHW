clear,clc,close all;
format shortE
Msun = 1.9891e30;
Lsun = 3.845e33;
m = 1;
for n = linspace(0.1,30,1000)%n=M/Msun，n从1到30取1000个值
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
    %计算结果储存到L这一个1000*2的矩阵里，第一列为质量比，第二列为光度值，单位为erg/s
m = m+1;
end
L
display erg/s;
