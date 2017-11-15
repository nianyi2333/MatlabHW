function newdata=eqtogal(ra,dec)
b=((asin(sin((27.12825/180)*pi)*sin((dec*pi)/180)+...
    cos((27.12825/180)*pi)*cos((dec*pi)/180)*cos(((ra-192.85948)*pi)/180)))/pi)*180;
l=-((asin(((cos((dec*pi)/180)*sin(((ra-192.85948)*pi)/180)))/cos(b)))/pi)*180+122.932;
newdata=[b l];
