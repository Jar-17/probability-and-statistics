load("MRI_brain_14slices.mat");

%choose the second one to plot
choosed = MRI_brain(:,:,2);
imagesc(choosed);
colormap("gray");
set(gca,'dataaspectratio',[1 1 1]);

his = MRI_brain(:);
histogram(his,300);
xlim([0 2500]);

seg1 = zeros(880,640,14);
seg2 = zeros(880,640,14);
seg3 = zeros(880,640,14);

g1_count = 1;
g2_count = 1;
g3_count = 1;

for i=1:880
    for j=1:640
        for z=1:14
            if(223 < MRI_brain(i,j,z) &&  MRI_brain(i,j,z) <= 470)
                seg1(i,j,z) = 1;
                g1(g1_count)=MRI_brain(i,j,z);
                g1_count = g1_count +1 ;
            end    
            if(MRI_brain(i,j,z) > 470 && MRI_brain(i,j,z) <= 1021)
                seg2(i,j,z) = 1;
                g2(g2_count)=MRI_brain(i,j,z);
                g2_count = g2_count +1 ;
            end
                if (1021 < MRI_brain(i,j,z)  && MRI_brain(i,j,z) <= 1400)
                seg3(i,j,z) = 1;
                g3(g3_count)=MRI_brain(i,j,z);
                g3_count = g3_count +1 ;
                end
            end
        end
    end




seg2_1 = seg1(:,:,2);
imagesc(seg2_1);
colormap("gray");
seg2_2 = seg2(:,:,2);
imagesc(seg2_2);
colormap("gray");
seg2_3 = seg3(:,:,2);
imagesc(seg2_3);
colormap("gray");

g1_min = mean(g1);
g1_std = std(g1);
g2_min = mean(g2);
g2_std = std(g2);
g3_min = mean(g3);
g3_std = std(g3);

%plot the first one
x1 = (-5 * g1_std:0.01:5 * g1_std) + g1_min;  %// Plotting range
y1 = exp(- 0.5 * ((x1 - g1_min) / g1_std) .^ 2) / (g1_std * sqrt(2 * pi));
plot(x1, y1);
xlim([0 2500]);
ylim([0 7*power(10,5)]);

%plot the second one
x2 = (-5 * g2_std:0.01:5 * g2_std) + g2_min;  %// Plotting range
y2 = exp(- 0.5 * ((x2 - g2_min) / g2_std) .^ 2) / (g2_std * sqrt(2 * pi));
plot(x2, y2);

xlim([0 2500]);
ylim([0 0.01]);

%plot the third one
x3 = (-5 * g3_std:0.01:5 * g3_std) + g3_min;  %// Plotting range
y3 = exp(- 0.5 * ((x3 - g3_min) / g3_std) .^ 2) / (g3_std * sqrt(2 * pi));
plot(x3, y3);
xlim([0 2500]);
ylim([0 0.01]);

%plot all
plot([x1 x2 x3],[y1 y2 y3]);
xlabel("image intensity");
ylabel("frequency(pixel count)");
