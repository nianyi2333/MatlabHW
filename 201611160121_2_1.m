Mass = linspace(0.1,30,1000);
n = 1;
deltL = zeros(1000,1);
while n <= 1000
    if Mass(n) <= 0.43
        deltL(n) = 0.23*(Mass(n))^3.3;
    elseif Mass(n) <= 2
        deltL(n) = (Mass(n))^4;
    elseif Mass(n) <= 20
        deltL(n) = 1.5*(Mass(n))^3.5;
    else
        deltL(n) = 3200*Mass(n);
    end
  n = n + 1;  
end

