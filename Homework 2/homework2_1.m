%%Homework2_1
Mass = linspace(0.1,30,1000);
for i = 1:1000
    if (0<Mass(i)<0.43)
        Lp = 0.23*Mass(i)^0.23;
    end
    if (0.43<Mass(i)<2)
        Lp = Mass(i)^4;
    end
    if (2<Mass(i)<20)
        Lp = 1.5*Mass(i)^3.5;
    end
    if (Mass(i)>20)
        Lp = 3200*Mass(i);
    end
    fprintf('Mass=%8.6f  Lp=%5e \n',Mass(i),Lp)
end