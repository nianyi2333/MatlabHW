function [l,b] = eqtogal(ra,dec)
%输入赤道坐标转换为银道坐标
format long
ra1=ra*pi/180;
dec1=dec*pi/180;
gp1=192.85498*pi/180;
gp2=27.12825*pi/180;
cp=122.932;
b1=asin(sin(gp2)*sin(dec1)+cos(gp2)*cos(dec1)*cos(ra1-gp1));
b=b1*180/pi;

asin1=asin(cos(dec1)*sin(ra1-gp1)/cos(b1))*180/pi;
%求出0-180范围内sin与sin（cp-l）相等的角度值

acos1=acos((cos(gp2)*sin(dec1)-sin(gp2)*cos(dec1)*cos(ra1-gp1))/cos(b1))*180/pi;
%求出-90—90范围内cos与cos（cp-l）相等的角度值

if asin1==acos1   %第一象限反三角函数，值不变
    l=cp-asin1;
else
    if asin1<0 & acos1<90    %第四象限反三角函数，角度为acos值
        l=cp-acos1;
    elseif asin1<0 & acos1>90   %第三象限反三角函数，角度值为-acos
        l=cp+acos1;
    elseif asin1>0 & acos1>=90 & acos1<=122.932  
        %第二象限反三角函数，需根据cp-l关系判断角度
        l=cp-acos1;
    elseif asin1>0 & acos1>122.932 &acos1<=180
        %第二象限反三角函数，需根据cp-l关系判断角度
        l=cp-(acos1-pi);
    end
end
end

