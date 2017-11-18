function [l,b]=egtogal(ra,dec)
ra=input('enter a value for ra')
dec=input('enter a value for dec')
sin(b)=sin(27.12825)*sin(dec)+cos(27.12825)*cos(dec)*cos(ra-192.85948);
b=asin(sin(b));
sin(122.932-l)=(cos(dec)*sin(ra-192.85948))/cos(b);
cos(122.932-l)=(cos(27.12825)*sin(dec)-sin(27.12825)*cos(dec)*cos(ra-192.85948))/cos(b);
l=122.932-asin(sin(122.932-l));
display(a)
display(b)