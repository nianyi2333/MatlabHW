function light = starlight ()
list = linspace(0.1,30,1000);
for n=1:1000
    mass=list(1,n);
    if mass<0.43
      	light=mass^(2.3)*0.23;
    elseif mass>=0.43 && mass < 2;
        light = mass^4;
    elseif mass>=2 && mass < 20
        light=1.5*mass^(3.5);
    elseif mass>=20
        light=3200*mass;
    end
    display(light)
end
