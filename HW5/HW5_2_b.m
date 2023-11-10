%generate the 10^4 array
samples_rand = rand(10000,1);
x=zeros(14,1);
fx=[0.04;0.1;0.17;0.25;0.33;0.44;0.51;0.57;0.62;0.65;0.71;0.83;0.93;1];
for index=1:10000
    s=samples_rand(index);
    for fx_index=1:14
        if s<fx(fx_index)
            x(fx_index)=x(fx_index)+1;
            break
        end
    end

end

%deal with the relative freauency
for pro_index=1:14
    x(pro_index)=x(pro_index)/10^4;
end

%plot it
y=1:14
bar(y,x);

xlabel('X');
ylabel('Probability');
title("random samples of a probability distribution");