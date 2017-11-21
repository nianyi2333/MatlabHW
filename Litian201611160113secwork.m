clear;clc;
Mass=input('请输入质量(数字为1到1000,）:');
Masslist=linspace(0.1,30,1000);
Luminolist=zeros(1,1000);
for n=1:1000; %用循环求出列表中每一个恒星质量对应的光度
    if Masslist(n)<0.43;
        Luminolist(n)=0.23*Masslist(n)^2.3;
    elseif Masslist(n)>=0.43&Masslist(n)<2;
         Luminolist(n)=Masslist(n)^4;
    elseif  Masslist(n)>=2&Masslist(n)<20;
         Luminolist(n)=1.5*Masslist(n)^3.5;
    elseif Masslist(n)>=20;
         Luminolist(n)=Masslist(n)*3200;
    end
end
fprintf('所求恒星光度为%d倍的太阳光度',Luminolist(Mass));
fprintf(' ')
List=input('是否要查看所有质量—光度对应关系？(是或否）:','s');
tf = strcmp(List,'是');
if tf==1;
    display(Luminolist)
else
end

ra=input('请输入经度:');
dec=input('请输入纬度:');
ra=ra*pi/180;
dec=dec*pi/180;
[b,l]=milkeyfuc(ra,dec);
display(l)
display(b)








