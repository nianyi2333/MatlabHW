clear;clc;
mass=linspace(0.1,30,1000);
gd=[];
for n=1:1000;
    switch mass(n);
        case mass(n)<0.43;
            L=0.23*(mass(n)^(2.3));
            gd=[gd L];
        case mass(n)>=0.43&mass(n)<2;
            L=mass(n)^4;
            gd=[gd L];
        case mass(n)>=2&mass(n)<20;
            L=1.5*(mass(n)^(3.5));
            gd=[gd L];
        otherwise mass(n)>=20;
            L=3200*mass(n);
            gd=[gd L];
    end
end
gd
