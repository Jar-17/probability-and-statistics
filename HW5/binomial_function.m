function [probability] = binomial_function(num_of_success,trials,test_rate)

%calculate the combination of success and trials
com = nchoosek (trials,num_of_success);

%calculate the probability value
probability = com * (test_rate^num_of_success) *((1-test_rate)^(trials-num_of_success));

end