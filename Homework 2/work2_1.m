clear;clc;close all;
ni = 0; %for counting and change the value of output Matrix
L = zeros(1,1000);
for Mass = linspace(0.1,30,1000)
    ni = ni + 1; %location figure
    if Mass <= 0.43
        L(ni) = 0.23 * (Mass)^2.3;
    elseif 0.43 < Mass <= 2
        L(ni) = Mass^4;
    elseif 2 < Mass <= 20
        L(ni) = 1.5 * Mass^3.5;
    else % can also use elseif 20 < Mass
        L(ni) = 3200 * Mass;
    end  
end
display(L)