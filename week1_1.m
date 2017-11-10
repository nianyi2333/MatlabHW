% approximation of pi, please input the N and get the final mitrix
% containing each pi (related to N) and the delta
format long
N = 1; %input N (can be 1 or 2)
new_pi = []; delta = [];
for n=(0:N)
    k = (0:n);
    denominator1 = factorial(1.*k).^4;
    denominator2 = 396.^(4.*k);
    new_onepi_element = 2*(2^(1/2))/9801.*...
                        (...
                        ( factorial(4.*k) .* (1103 + 26390.*k) ) ./...
                        ( denominator1 .* denominator2 ) ...
                        );
    % if put denominator in this line directly, something will be wrong
    new_pi(n+1) = (sum(new_onepi_element))^(-1);
    delta(n+1) = new_pi(n+1) - pi;
end
new_pi
delta
