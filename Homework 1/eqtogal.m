function [l,b]=eqtogal(alpha,delta)
alphaGP=192.85948;
deltaGP=27.12825;
lGP=122.932;
b=asind(sind(deltaGP)*sind(delta)+cosd(deltaGP)*cosd(delta)*cosd(alpha-alphaGP));
l=lGP-asind((cosd(delta)*sind(alpha-alphaGP))/cosd(b));
end