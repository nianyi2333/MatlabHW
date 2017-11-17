clear;clc;close all
Mass=linspace(.1,30,1000);
gd=[];
for n=1:1000
    if Mass(n)<=.43
        star_L1=.23*(Mass(n)^(2.3));
        gd=[gd star_L1];
    elseif Mass(n)>.43&&Mass(n)<=2
        star_L2=Mass(n)^4;
        gd=[gd star_L2];
    elseif Mass(n)>2&&Mass(n)<=20
        star_L3=1.5*(Mass(n)^(2.5));
        gd=[gd star_L3];
    elseif Mass(n)>20
        star_L4=3200*Mass(n);
        gd=[gd star_L4];
    end
end
gd

        
            