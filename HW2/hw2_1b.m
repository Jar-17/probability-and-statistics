num_repetition = 1000;
repeat_array = [];

for i=1:num_repetition
    %save the 1000 result in the array
    hw2_1a;
    repeat_array(i)= num ;
 
end

edge = [150:10:280];

histogram(repeat_array,'Normalization','probability','BinWidth',1,);
