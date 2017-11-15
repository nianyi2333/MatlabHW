clear;clc;
data=linspace(0.1,30,1000);
newdata=[];
for k=1:1000;
    switch data(k);
        case data(k)<0.43;
            L=0.23*(data(k)^2.3);
            newdata=[newdata L];
        case data(k)>=0.43&data(k)<2;
            L=data(k)^4;
            newdata=[newdata L];
        case data(k)>=2&data(k)<20;
            L=1.5*(data(k)^3.5);
            newdata=[newdata L];
        otherwise data(k)>=20;
            L=3200*data(k);
            newdata=[newdata L];
    end
end
newdata