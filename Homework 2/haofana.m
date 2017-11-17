function [l,b]  =  haofana(ra,dec)
    agp=192.85948;cgp=27.12825;lcp=122.932;
    agp=agp/360*2*pi;
    cgp=cgp/360*2*pi;
    lcp=lcp/360*2*pi;
    ra=ra/360*2*pi;
    dec=dec/360*2*pi;
    sin(cgp)*sin(dec)+cos(cgp)*cos(dec)*cos(ra-agp);
    b=asin(sin(cgp)*sin(dec)+cos(cgp)*cos(dec)*cos(ra-agp));
    sinl=cos(dec)*sin(ra-agp)/cos(b);
    cosl=(cos(cgp)*sin(dec)-sin(cgp)*cos(dec)*cos(ra-agp))/cos(b);
    l=lcp-atan2(sinl,cosl);
end
