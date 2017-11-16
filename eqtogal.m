function [l,b] = eqtogal(ra,dec)
alphaGP=192.85948;
detGP=27.12825;
lCP=122.932;
b=asin(sin(detGP)*sin(dec)+cos(detGP)*cos(alphaGP-ra));
l=-asin(cos(dec)*sin(ra-alphaGP))/cos(b)-lCP;
display([l,b])
%%天文系的东西我数学系的实在是看不太懂……也不知道这些量是什么意思。