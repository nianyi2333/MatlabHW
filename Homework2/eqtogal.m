function [l,b]=eqtogal(ra,dec)
ra=input('please input the right ascension: ');
dec=input('please input the declination: ');
format long;
alpha=266.405;
delta=-28.936;
alphaGP=192.85948;
deltaGP=27.12825;
lCP=122.932;
b=asin(sin(deltaGP)*sin(dec)+cos(deltaGP)*cos(dec)*cos(ra-alphaGP));
l=-asin((cos(dec)*sin(ra-alphaGP))/cos(b))+lCP;
display([l,b])
