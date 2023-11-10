%simulate n = 1;
a1 = IHdistribution(1);
histogram(a1,100,'Normalization','pdf');
hold on;
%plot normal for x=1
mean1 = mean(a1);
std1 = std(a1);

x1 = linspace(min(a1), max(a1), 100);  % Range of x-values for the plot
y1 = normpdf(x1, mean(a1), std(a1));  % Normal distribution PDF values

plot(x1,y1)
hold off;
title("n=1");
xlabel("x");
ylabel("pdf");
legend('histogram','normal distribution');

%simulate n = 2;
a20 = IHdistribution(2);
histogram(a20,100,'Normalization','pdf');
hold on;
%plot normal for x=1
mean2 = mean(a20);
std2 = std(a20);

x2 = linspace(min(a20), max(a20), 100);  % Range of x-values for the plot
y2 = normpdf(x2, mean(a20), std(a20));  % Normal distribution PDF values

plot(x2,y2)
hold off;
title("n=2");
xlabel("x");
ylabel("pdf");
legend('histogram','normal distribution');

%simulate n = 20;
a20 = IHdistribution(20);
histogram(a20,100,'Normalization','pdf');
hold on;
%plot normal for x=1
mean20 = mean(a20);
std20 = std(a20);

x20 = linspace(min(a20), max(a20), 100);  % Range of x-values for the plot
y20 = normpdf(x20, mean(a20), std(a20));  % Normal distribution PDF values

plot(x20,y20)
hold off;
title("n=20");
xlabel("x");
ylabel("pdf");
legend('histogram','normal distribution');
