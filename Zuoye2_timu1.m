%  题目1 计算1000个恒星的光度
%  Mass为恒星质量，单位为太阳质量；L为光度，单位为太阳光度。
clear;clc;close all;
format long;
Mass=linspace(0.1,30,1000);
L=zeros(1,1000);
for i=1:1000
    if Mass(i)<0.43;
        L(i)=0.23*Mass(i)^2.3;
    elseif 0.43<=Mass(i)<2;
        L(i)=Mass(i)^4;
    elseif 2<=Mass(i)<20;
        L(i)=1.5*Mass(i)^3.5;
    else
        L(i)=3200*Mass(i);
    end
end
display(L)
