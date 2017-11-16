mass=linspace(0.1,30,1000);
N=1000;
for ni=1:N
    if mass(ni)<0.43
    L=0.23*mass(ni)^2.3;
    elseif mass(ni)<2
    L=mass(ni)^4;
    elseif mass(ni)<20
        L=1.5*mass(ni)^3.5;
    else
        L=3200*mass(ni)
    end
end
display(L)