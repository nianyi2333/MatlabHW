function [l,b] = eqtogal(ra,dec)
%input ra & dec in the main program and output l & b
%input ra,dec are with the unit бу.
k = 2*pi/360;  %for transform бу to rad.
alpha = ra * k;
delta = dec * k;

alpha_GP = 192.85948 * k;
delta_GP = 27.12825 * k; 
l_CP = 122.932 * k; %const input, unit: бу.
b = asin( sin(delta_GP) * sin(delta)...
    + cos(delta_GP) * cos(delta) * cos(alpha - alpha_GP) );
si_lc = ( cos(delta) * sin(alpha - alpha_GP) )...
    / ( cos(b) );
co_lc = ( cos(delta_GP) * sin(delta) ...
    - sin(delta_GP) * cos(delta) * cos(alpha - alpha_GP) )...
    / ( cos(b) );
l1 = l_CP/k - asin(si_lc)/k;
l2 = l_CP/k - acos(co_lc)/k;
l = (l1 + l2) / 2;
display([b,l,l1,l2])
end
% not finished 
% something wrong with how to choose l and b