Mass=linspace(0.1,30,1000);
for i =1:1000;
    if Mass(i)<=0.43;
        L(i)=0.23*(Mass(i))^2.3;
    end
     if (Mass(i)>0.43)+(Mass(i)<=2)==2;
        L(i)=(Mass(i))^4;
     end
     if (Mass(i)>2)+(Mass(i)<=20)==2;
        L(i)=1.5*(Mass(i))^3.5;
     end
    if Mass(i)>20;
        L(i)=3200*Mass(i);
    end
end
format long
 display(L)
    