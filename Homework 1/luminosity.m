%已知恒星质量计算光度
for mass=linspace(0.1,30,1000)
    if 0<mass & mass<0.43
        Lum=mass^2.3*0.23;
    elseif 0.43<=mass & mass<2
        Lum=mass^4;
    elseif 2<=mass & mass<20
        Lum=mass^3.5*1.5;
    elseif mass>=20
        Lum=mass*3200;
    else
        display('your input is wrong!')
    end
    display(Lum)
end