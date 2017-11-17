Mass=linspace(0.1,30,1000);
%Mass is a maxtrix from 0.1 to 30,including 1000 items.
for n=1:1000;
    term=Mass(n);
    if term<0.43;
        light(n)=23*term^2.3;
    elseif (0.43<term)&&(term<2);
        light(n)=term^4;
    elseif (2<term)&&(term<20);
        light(n)=1.5*term^3.5;
    else 20<term;
        light(n)=3200*term;
    end
end
%different formula for different range
[Mass',light']
%transpose and print
