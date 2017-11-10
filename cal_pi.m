function [ res_pi ] = cal_pi( n )
%calculate the value of pi with different n given.
sigma=0;
for k=0:n
    multiply_4k=1;
    multiply_k=1;
    for counter0=1:k
        multiply_4k=multiply_4k*4*counter0;
        multiply_k=multiply_k*counter0;
    end
    sigma=sigma+multiply_4k*(1103+26390*k)/(multiply_k^4*396^(4*k));
end
func_pi=2*sqrt(2)*sigma/9801;
res_pi=1/func_pi;
