function [b,l] = eqtogal(ra,dec)
aGP=192.85948;
dGP=27.12825;
lcp=122.932;
b=asind(sind(dGP)*sind(dec)+cosd(dGP)*cosd(dec)*cosd(ra-aGP));
Y=cosd(dec)*sind(ra-aGP)/cosd(b);
X=(cosd(dGP)*sind(dec)-sind(dGP)*cosd(dec)*cosd(ra-aGP))/cosd(b);
l=-atan2d(Y,X)+lcp;
end