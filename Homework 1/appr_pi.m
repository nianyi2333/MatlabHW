clear
%依据题目公式计算两次pi值并与内置值比较。
format long
for N=0:1;%精度，越大越好。经测试N取10时误差不被算出来。河马我爱你。
    for k=0:N
        The_plus(k+1)=factorial(4*k)*(1103+26390*k)...
            /factorial(k)^4/396^(4*k);
    end
    The_pi=9801*2^(-1.5)/sum(The_plus);
    The_pi
    N
    fprintf('相对内置值偏差百分之\n')
    (The_pi/pi-1)*100
end
clear k N The_plus
%20171110