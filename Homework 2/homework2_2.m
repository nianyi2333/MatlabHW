function [l,b]=eqtogal(ra,dec)
alpha = 192.85948;
delta = 27.12825;
lcp = 122.932;
b = asind(sind(dec)*sind(delta)+cosd(delta)*cosd(dec)*cosd(ra-alpha));
l = lcp - acosd((cosd(delta)*sind(dec)-sind(delta)*cosd(dec)*cosd(ra...,
-alpha))/cosd(b));