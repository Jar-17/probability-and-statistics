function [probability] = poisson_function(x,lumbda_mul_time)
%apply the formula
probability = (exp(-1*lumbda_mul_time)*(lumbda_mul_time^x))/factorial(x);
end