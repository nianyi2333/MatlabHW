%divert ra and dej to l and b
function[l_mean,b]=matlab_22(ra,dej)
GP=[192.85948,27.12825];
lcp=122.932;
k=180/pi;%rad->degree
ra=ra/k;
dej=dej/k;
GP=GP./k;
lcp=lcp/k;

sinb=sin(GP(2))*sin(dej)+cos(GP(2))*cos(dej)*cos(ra-GP(1));
cosb=(1-sinb^2)^(1/2);
sin_lcp_l=cos(dej)*sin(ra-GP(1))/cosb;%sin(lcp-l)
cos_lcp_l=(cos(GP(2))*sin(dej)-sin(GP(2))*cos(dej)*cos(ra-GP(1)))/cosb;
    %cos(lcp-l)
b=asin(sinb)*k;

lcp_l_sin=asin(sin_lcp_l)*k;%lcp-l(from sin)
lcp_l_cos=acos(cos_lcp_l)*k;%lcp-l(from cos)

%Determine the quadrant to calculate the correct angle
if sin_lcp_l>0&cos_lcp_l<0%the second quadrant
    lcp_l_sin=180-lcp_l_sin;
elseif sin_lcp_l<0&cos_lcp_l<0%third
    lcp_l_sin=180-lcp_l_sin;
    lcp_l_cos=360-lcp_l_cos;
elseif sin_lcp_l<0&cos_lcp_l>0%forth
    lcp_l_cos=-lcp_l_cos;
end

lsin=lcp*k-lcp_l_sin;
lcos=lcp*k-lcp_l_cos;

l_mean=(lsin+lcos)/2;%error elimination

