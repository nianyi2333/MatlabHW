function output=eqtogal(ra,dec)
alphaGP=192.85948;
deltaGP=27.12825;
lCP=122.932;
b=asin(sin(deltaGP*pi/180)*sin(dec*pi/180)+cos(deltaGP*pi/180)*cos(dec*pi/180)*cos(ra*pi/180-alphaGP*pi/180))/pi*180;
l=lCP-asin(cos(dec)*sin(ra-alphaGP)/cos(b))/pi*180;
output=[l,b];
end



