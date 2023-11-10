function output = simulate(defective_rate, num_of_product)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

% calculate the number of defective products

num_defective = round(defective_rate*num_of_product);

% calculate the torelate range

tolerate = round(num_defective*0.02);
posible_value = num_defective-tolerate:num_defective+tolerate ;
random_index = randi(size(posible_value));
value = posible_value(random_index);

% create an 1*num_of_product array with element to be 0   
output = zeros(1,num_of_product);
output(1:value) = 1;

%Randomly shuffle 
output = output(randperm(num_of_product));


end
