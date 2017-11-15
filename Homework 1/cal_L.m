%计算恒星光度
%郑晨发 201711160114

clear;clc;
L_sun=1;
M_sun=1;
L=[];

M=linspace(0.1,30,1000);
for n=1:length(M)
    mass=M(n);
    if mass<0.43*M_sun
        L=[L 0.23*(mass/M_sun)^2.3*L_sun];
    elseif mass>=0.43*M_sun & mass<2*M_sun
        L=[L (mass/M_sun)^4*L_sun];
    elseif mass>=2*M_sun & mass<20*M_sun
        L=[L 1.5*(mass/M_sun)^3.5*L_sun];
    elseif mass>=20*M_sun
        L=[L 3200*mass/M_sun];
    else
        L=[L ' N/A '];
    end
end

L
