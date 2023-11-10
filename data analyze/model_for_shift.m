%dis(0-7) for location 1-8
dis = input('Enter probability for each area(1-8) in the form [p1 p2 ... p8]');
bar = input('Enter the probability of hard hit in every area in the form [p1 p2 ... p8]');
%index 0,1,2,3 stands for 3B,SS,2B,1B 
loc = [];
test_pro = 0.1;

%loc for 1B
%if the pro in 8 > test
if dis(8)>test_pro
    loc(4) = 8;
end

%if <test
%這裡的0.05是常數不須變動
if dis(8) > (dis(7) + 0.05)
    loc(4) = 8;
else
    loc(4) = 7;
end


%loc for 3B
%if the pro in 1 > test
if dis(1)>test_pro
    loc(1) = 1;
end

%if <test
if dis(1) > (dis(2) + 0.05)
    loc(1) = 1;
else
    loc(1) = 2;
end
%考慮分佈多寡守球，才能cover 到比較多 
 
%loc for SS

if bar(2)>bar(4) + 0.025
    loc(2)=2;
elseif bar(2) +0.05 < bar(4) 
    loc(2)=4;
else
    loc(2) = 3;
end



%loc for 2B

if bar(6)>bar(4) + 0.025
    loc(3)=6;
elseif bar(6) +0.05 < bar(4) 
    loc(3)=4;
else
    loc(3) = 5;
end


% if(left<25%)left(dis1+2+3) only 3B(25%/per)則游擊手守5 2B守7深 
% 1.左邊均分(守中間)
% 2.左邊極端(守3B)(SS在2壘附近)
% 強力拉打打到左邊是打不好，不強勁 

if dis(1)+dis(2)+dis(3)<0.16
    loc(2)=5;
    loc(3)=7;
    loc(1)=3;
    loc(4)=8;
end

