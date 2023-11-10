function [samples] = IHdistribution(n)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
result = cell(1,n);
samples = zeros(1,power(10,6));
for i=1:n
    result{n} = rand(1,power(10,6));
    tmp = samples ;
    samples = tmp + result{n};
end
end