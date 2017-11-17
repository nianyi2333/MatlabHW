% calculate the L of stars(L is The ratio of star's luminosity to solar luminosity)
mass=linspace(0.1,30,1000);

L=zeros(1,1000);
for i=1:1000
    if mass(i)>=20
       L(i)=3200*mass(i);        
    elseif mass(i)>=2
        L(i)=1.5*(mass(i)^3.5);   
    elseif mass(i)>=0.43
        L(i)=(mass(i)^4);      
    else
        L(i)=0.23*(mass(i)^2.3);
    end
    
end  
display(L)