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

% then we need to difine the True l is in which quadrant
% and change the cos or sin to the write figure
% THIS IS TO SOLVE SOMETIMES THE PROGRAM WILL CONFUSED IN THE TRUE L
% BECAUSE IT CAN NOT KNOW THE RIGHT QUADRANT AND THE ASIN AND ACOS MAY GIVE
% THE WRONG ANSWER
key = [si_lc >= 0 , co_lc >= 0];
if key(1) == 1 && key(2) == 1 %quadrant 1
    theta1 = asin(si_lc); theta2 = acos(co_lc);
elseif key(1) == 1 && key(2) == 0 %quadrant 2 (cos is right but sin is not)
    theta1 = pi - asin(si_lc) ; theta2 = acos(co_lc);
elseif key(1) == 0 && key(2) == 0 %quadrant 3 (both nor right)
    theta1 = 1.5 * pi - asin(si_lc) ; theta2 = 2 * pi - acos(co_lc);
elseif key(1) == 0 && key(2) == 1 %quadrant 4 (sin right but cos is not)
    theta1 = asin(si_lc) ; theta2 = -1 * acos(co_lc);
else 
    display('maybe something is wrong')
end

l1 = l_CP/k - theta1/k;
l2 = l_CP/k - theta2/k;

l = (l1 + l2) / 2;
end
% finished now_ 2017 11 17 14:28