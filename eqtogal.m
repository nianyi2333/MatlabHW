%  galactic_coordinates为银道坐标
%  (alpha,delta)为输入的赤道坐标，（l，b）为银道坐标alphaGP,deltaGP与lCP为三个常数
%  首先要将各坐标转化为弧度制，最后结果再转化为角度
function galactic_coordinates=eqtogal(alpha,delta);
alpha1=alpha*pi/180;
delta1=delta*pi/180;
galactic_coordinates=zeros(1,2);
alphaGP=192.85948*pi/180;
deltaGP=27.12825*pi/180;
lCP=122.932*pi/180;
b=asin(sin(deltaGP)*sin(delta1)+cos(deltaGP)*cos(delta1)*cos(alpha1-alphaGP));
l=lCP-acos((cos(deltaGP)*sin(delta1)-sin(deltaGP)*cos(delta1)*cos(alpha1-alphaGP))/cos(b));
galactic_coordinates(1)=l*180/pi;
galactic_coordinates(2)=b*180/pi;
end




