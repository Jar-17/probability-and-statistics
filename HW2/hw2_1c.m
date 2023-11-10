b1=100000*0.3;
b2=100000*0.45;
b3=100000*0.25;
repitition = 10;

for i=1:repitition
simulate(0.02,b1);
b1_defective = sum(ans==1);

simulate(0.03,b2);
b2_defective = sum(ans==1);

simulate(0.02,b3);
b3_defective = sum(ans==1);

defective = b1_defective + b2_defective +b3_defective ;

repetitive_array(i) = b3_defective / defective ;
end
