function output=eqtogal(ra,dec)
alphaGP=192.85948;
deltaGP=27.12825;
lCP=122.932;
b=asin(sin(deltaGP)*sin(dec)+cos(deltaGP)*cos(dec)*cos(ra-alphaGP));
l=lCP-asin(cos(dec)*sin(ra-alphaGP)/cos(b));
output=[l,b];
end



