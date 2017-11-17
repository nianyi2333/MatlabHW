clear; clc; close all;
% calculate L/Lsun based on M/Msun
% It is a piecesise function.
M=linspace(0.1,30,1000);
L=zeros(1,1000);
count=0;
for n=M
    count=count+1;
    if n<0.43
        L(count)=0.23*n^2.3;
    elseif (0.43<=n)&(n<2)
        L(count)=n^4;
    elseif (2<=n)&(n<20)
        L(count)=1.5*n^3.5;
    else
        L(count)=3200*n;
    end
end
mat=[M',L'];       %mat col1=M/Msun, col2=L/Lsun