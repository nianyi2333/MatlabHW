function re=eqtogal(ra,dec)
%right1取代第一个等式的右边 
right1=sind(27.12825)*sind(dec)+cosd(27.12825)*cosd(dec)*cosd(ra-192.85948);
%给b赋值
b=asind(right1);
%right23合并第二、三个等式
right23=atand(sind(ra-192.85948)/(cosd(27.12825)*tand(dec)-sind(27.12825)*cosd(ra-192.85948)));
%trans为对反三角函数值的数学转换
trans=right23+180;
%给l赋值
l=122.932-trans;
display([l,b])