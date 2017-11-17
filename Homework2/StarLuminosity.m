clear
clc
mass = linspace(0.1,30,1000);
luminosity = [];
for n = 1:1000
    switch mass(n)
        case mass(n)<0.43
            N=0.23*(mass(n)^2.3);
            luminosity=[luminosity,N];
        case mass(n)>=0.43 & mass(n)<2
            N=mass(n)^4;
            luminosity=[luminosity,N];
        case mass(n)>=2 & mass(n)<20
            N=1.5*(mass(n)^3.5);
            luminosity=[luminosity,N];
        otherwise mass(n)>=20
            N=3200*mass(n);
            luminosity=[luminosity,N];
    end
end
display(luminosity)