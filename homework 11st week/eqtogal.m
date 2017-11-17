function [l,b]=eqtogal(ra,dec)
%To Convert the equatorial coordinates into galactic coordinates, the unit
%is angle, the format is (right ascension and declination).
%
%The teacher told me math principles and basic data. Henry, BNU, 20171117
GP=[192.85948 27.12825];CP=122.932;%basic data.
T_ra=ra-GP(1);%Temp_ra

b=asind(sind(GP(2))*sind(dec)+cosd(GP(2))*cosd(dec)*cosd(T_ra));
S_s=cosd(dec)*sind(T_ra)/cosd(b);%Selection_sin T_l
S_c=(cosd(GP(2))*sind(dec)-sind(GP(2)) ...
    *cosd(dec)*cosd(T_ra))/cosd(b);%Selection_cos T_l

L_l=[(S_s>0) (S_c>0)];%Logic about l.
if L_l==[1 1]
    l=asind(S_s);
elseif L_l==[1 0]
    l=acosd(S_c);
elseif L_l==[0 1]
    l=asind(S_s)+360;
elseif L_l==[0 0]
    l=acosd(S_c);
end
l=CP-l;
end