%input value
num_of_success = input('input num_of_success = ');
trials = input('input trials = ');
test_rate = input('input test_rate = ');

%show the answer
probability = binomial_function(num_of_success,trials,test_rate);
disp('probability = ')
disp(probability);