function gal = eqtogal(ra,dec)
%transform the equatorial coordinate to galactic coordinate
%input RA and DEC
format shortE
GP = [192.85948,27.12825];
l_CP = 122.932;
GP = GP*pi/180;
l_CP = l_CP*pi/180;
ra = ra*pi/180;
dec = dec*pi/180;
b = asin(sin(GP(2))*sin(dec)+cos(GP(2))*cos(dec)*cos(ra-GP(1)));
ls = asin((cos(dec)*sin(ra-GP(1)))/cos(b));
eq_left = cos(b)*cos(ls);
eq_right = cos(GP(2))*sin(dec)-sin(GP(2))*cos(dec)*cos(ra-GP(1));
while abs(eq_left-eq_right)>0.00001;%判断是否符合第三个方程
	ls = pi - ls;
    eq_left = cos(b)*cos(ls);
end
l = l_CP-ls;
l = l*180/pi;
b = b*180/pi;
gal = [l,b];

