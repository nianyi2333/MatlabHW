%Homework1_1
ser = 0;
fprintf('%18.16f \n',pi);
for i = 0:1;
	ser = ser  + factorial(4*i)*(1103+26390*i)/(factorial(i)*396^(4*i));
	Mypi = 9801/(2*2^(1/2)*ser);
    fprintf('%18.16f \n',Mypi);
end
