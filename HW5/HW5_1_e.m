%case(n,p)=(10^4,0.01)
subplot(2,2,1);
samples=1:10^4;
case1_bi=binopdf(samples,10^4,0.01);
m=10^4*0.01;
case1_po=poisspdf(samples,m);
pl1=plot(samples,case1_bi,samples,case1_po);
title('(n,p)=(10^4,0.01)');
xlabel('samples');
ylabel('probability');
xlim([30 200]);

%case(n,p)=(10^4,0.1)
subplot(2,2,2)
samples=1:10^4;
case2_bi=binopdf(samples,10^4,0.1);
m=10^4*0.1;
case2_po=poisspdf(samples,m);
pl2=plot(samples,case2_bi,samples,case2_po);
title('(n,p)=(10^4,0.1)');
xlabel('samples');
ylabel('probability');
xlim([800 2000]);

%case(n,p)=(10^4,0.2)
subplot(2,2,3)
samples=1:10^4;
case3_bi=binopdf(samples,10^4,0.2);
m=10^4*0.2;
case3_po=poisspdf(samples,m);
pl3=plot(samples,case3_bi,samples,case3_po);
title('(n,p)=(10^4,0.2)');
xlabel('samples');
ylabel('probability');
xlim([1500 2500]);

%case(n,p)=(10^4,0.5)
subplot(2,2,4)
samples=1:10^4;
case4_bi=binopdf(samples,10^4,0.5);
m=10^4*0.5;
case4_po=poisspdf(samples,m);
pl4=plot(samples,case4_bi,samples,case4_po);
title('(n,p)=(10^4,0.5)');
xlabel('samples');
ylabel('probability');
xlim([4000 6000]);