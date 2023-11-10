%write the seperate x and y array
x=1:14;
y=[0.04,0.06,0.07,0.08,0.08,0.11,0.07,0.06,0.05,0.03,0.06,0.12,0.1,0.07];
%plot a bar graph
bar(x,y);
%revise the graph
xlabel('X');
ylabel('Probability');
title('Probability distribution f(x)');
%make sure each bar at the center of the value
xticks(1:14);