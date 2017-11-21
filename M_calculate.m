%给出太阳光度
L_sun = 3.845e33;

%M/M_0从0到30取一千个值进行判断并输出质量
for M=linspace(0.1,30,1000)
    M
    if M<.43
        L = L_sun*.23*M^2.3
    elseif M<2
        L = L_sun*M^4
    elseif M<20
        L = L_sun*1.5*M^3.5
    else
        L = 3200*L_sun*M
    end
end