clear
%to Calculate the star luminosity with Teacher's formula.
%cycle and selection are obliged. Why? uhhhhhhhh
data=linspace(.1,30,1000);%data is the result.
for The_one=1:1000
    if data(1,The_one)<.43
        data(2,The_one)=.23*data(1,The_one)^2.3;
    elseif data(1,The_one)<2
        data(2,The_one)=data(1,The_one)^4;
    elseif data(1,The_one)<20
        data(2,The_one)=1.5*data(1,The_one)^3.5;
    else
        data(2,The_one)=3200*data(1,The_one);
    end
end
fprintf(['Well the result is in the ''data'' matrix.\nThe 1st line '  ...
    'means Quality ratio.\nAnd the 2nd means Luminosity ratio.\n'])
clear The_one