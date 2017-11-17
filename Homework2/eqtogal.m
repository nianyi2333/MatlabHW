function [l,b]=eqtogal(ra,dec)
%Equatorial coordinate to galactic coordinate 
ra_GP =192.85948;
dec_GP=27.12825;
l_CP=122.932;
b=asind(sind(dec_GP)*sind(dec)+cosd(dec_GP)*cosd(dec)*cosd(ra-ra_GP));
%银纬的取值在[-90,90]间的sin是一一对应关系
l1=asind(cosd(dec)*sind(ra-ra_GP))/cosd(b);                            
l2=180-l1;
%l1,l2表示 l_CP-l 的两个可能取值
%银经的取值范围[0,360]，所以 l_CP-l 范围也是360度，与asin函数的取值区间[-90,90]不是一一对应，
%需要用第三个关系式的cos符号来帮助判断l_CP-l的区间
bool=cosd(dec_GP)*sind(dec)-sind(dec_GP)*cosd(dec)*cosd(ra-ra_GP)/cosd(b);
if bool>0
    l=l_CP-l1;
else
    l=l_CP-l2;
end
if l<0
    l=l+360;
elseif l>360
    l=l-360;
end
%将l平移至[0,360]区间