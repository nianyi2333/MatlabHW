%divert ra and dej to l and b
function[l_mean,b]=matlab_22(ra,dej)
%ra=266.405;
%dej=-28.936;
GP=[192.85948,27.12825];
lcp=122.932;
k=180/pi;%????
ra=ra/k;
dej=dej/k;
GP=GP./k;
lcp=lcp/k;

sinb=sin(GP(2))*sin(dej)+cos(GP(2))*cos(dej)*cos(ra-GP(1));
cosb=(1-sinb^2)^(1/2);
sin_lcp_l=cos(dej)*sin(ra-GP(1))/cosb;%sin(lcp-l)
cos_lcp_l=(cos(GP(2))*sin(dej)-sin(GP(2))*cos(dej)*cos(ra-GP(1)))/cosb;
    %cos(lcp-l)

b=abs(acos(cosb));

lcp_l_sin=asin(sin_lcp_l)*k;%?asin???lcp-l
lcp_l_cos=acos(cos_lcp_l)*k;%?acos???lcp-l


%??(asin?acos???????)
if sin_lcp_l>0&cos_lcp_l<0%????
    lcp_l_sin=180-lcp_l_sin;
elseif sin_lcp_l<0&cos_lcp_l<0%????
    lcp_l_sin=270-lcp_l_sin;
    lcp_l_cos=360*lcp_l_cos
elseif sin_lcp_l<0&cos_lcp_l>0%????
    lcp_l_cos=-lcp_l_cos;
end

lsin=lcp*k-lcp_l_sin;
lcos=lcp*k-lcp_l_cos;
l_mean=(lsin+lcos)/2;%????
end
