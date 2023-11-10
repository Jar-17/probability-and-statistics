function [samples] = generator(num_of_sample)
% generate the sample array

for count=1:num_of_sample
x = [1,2,3,4,5,6,7,8,9,10,11,12,13,14];
index = randi(14);
sample(count) = x(index);
end
samples = sample;
end