%  galactic_coordinates为银道坐标
%  (alpha,delta)为输入的赤道坐标，（l，b）为银道坐标alphaGP,deltaGP与lCP为三个常数
function galactic_coordinates=eqtogal(alpha,delta);
galactic_coordinates=zeros(1,2);
alphaGP=192.85948;
deltaGP=27.12825;
lCP=122.932;
b=asin(sin(deltaGP)*sin(delta)+cos(deltaGP)*cos(delta)*cos(alpha-alphaGP));
l=lCP-asin(cos(delta)*sin(alpha-alphaGP)/cos(b));
galactic_coordinates(1)=l;
galactic_coordinates(2)=b;
end




