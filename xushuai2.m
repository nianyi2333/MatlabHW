%这是计算恒星光度的程序
m=linspace(0.1,30,1000);%生成所需的质量
for n=1:1000
    if m(n)<=0.43
        l(n)=0.23*m(n)^2.3;
    elseif 0.43<m(n)<=2
        l(n)=m(n)^4;
    elseif 2<m(n)<=20
        l(n)=1.5*m(n)^3.5;
    else 
        l(n)=3200*m(n);
    end
end%对不同质量的恒星求光度，单位是太阳光度
result=[ m; l]
display(result)%第一行是质量，第二行是对印的光度
