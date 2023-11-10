x=0:100;
y=1000:2000;
%distrbution1
subplot(2,2,1);
f1=normal_function(50,20,1500,200,0);
imagesc(f1);
colormap("jet");
xlim([1000 2000]);
xlabel("x");
ylabel("y");
%distribution2
subplot(2,2,2);
f2=normal_function(50,20,1500,200,0.3);
imagesc(f2);
colormap("jet");
xlim([1000 2000]);
xlabel("x");
ylabel("y");
%distrbution3
subplot(2,2,3);
f3=normal_function(50,20,1500,200,0.8);
imagesc(f3);
colormap("jet");
xlim([1000 2000]);
xlabel("x");
ylabel("y");
%distribution4
subplot(2,2,4);
f4=normal_function(50,20,1500,200,-0.8);
imagesc(f4);
colormap("jet");
xlim([1000 2000]);
xlabel("x");
ylabel("y");