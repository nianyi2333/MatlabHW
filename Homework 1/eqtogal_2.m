
function[l,b]=eqtogal(ra,dec)
ra_cp=192.85948;
dec_cp=27.12825;
l_cp=122.932;
b=asind(sind(dec_cp)*sind(dec)+cosd(dec_cp)*cosd(dec)*cosd(ra-ra_cp))
l=l_cp-asind(cosd(dec)*sind(ra-ra_cp)/cosd(b))
end