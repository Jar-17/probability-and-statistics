function [f] = normal_function(miux,sigmax,miuy,sigmay,correlation)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
x=0:100;
y=1000:2000;
z=zeros(100,1000);
for i= 1:100
    for j= 1000:2000
z(i,j)=(power((i-miux),2)/power(sigmax,2))+(power((j-miuy),2)/power(sigmay,2))-(2*correlation*(i-miux)*(j-miuy))/(sigmax*sigmay);
f(i,j)=exp(-z(i,j)/(2*(1-power(correlation,2))));
    end
end
end
