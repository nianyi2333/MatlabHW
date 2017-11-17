clear;clc;close all
for Mass=linspace(0.1,30,1000);
    if Mass<=0.43
        L=0.23*(Mass^2.3);
    elseif Mass<=2
        L=Mass^4;
    elseif Mass<=20
        L=1.5*(Mass^3.5);
    else
        L=3200*Mass;
    end
    display(L)
end
%%
clear;clc;close all
function [b,l]=eqtogal(ra,dec)
ra=input('ra');
dec=input('dec');
aGP=192.85948;
dGP=27.12825;
lcp=122.932;
b=asind(sind(dGP)*sind(dec)+cosd(dGP)*cosd(dec)*cosd(ra-aGP));
Y=cosd(dec)*sind(ra-aGP)/cosd(b);
X=(cosd(dGP)*sind(dec)-sind(dGP)*cosd(dec)*cosd(ra-aGP))/cosd(b);
l=-atan2d(Y,X)+lcp;
end
