%all the data
A=[72.2,31.9,26.5,29.1,27.3,8.6,22.3,26.5,20.4,12.8,25.1,19.2,24.1,58.2,68.1,89.2,55.1,9.4,14.5,13.9,20.7,17.9,8.5,55.4,38.1,54.2,21.5,26.2,59.1,43.3];

%process the mean and median
Mean=mean(A);
Median=median(A);

%plot
edges = [0,10,20,30,40,50,60,70,80,90];
histogram(A,'Normalization','probability','BinEdges',edges);
title('1-25 Relative frequency histogram')
xlabel('Percentages of the families that are in the upper income level(%)');
ylabel('Relative frequency')

%calculate the 10% trimmean
trimmedmean=trimmean(A,20);


