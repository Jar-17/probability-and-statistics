r=[0;1;2;3;4;5;6;7;8;9;10;11;12;13;14;15;16;17;18;19;20;21;22;21;24];
%f_cnt for the 10 r value
f_cnt = 0;

%deal with the value
for m=5.5:0.5:9.5
    f_cnt = f_cnt +1 ;
    
    for i= 0:24
        
        if i==0
        p(i+1,f_cnt) = poisson_function(i,m);
        else
            if p(i+1,f_cnt) == 1
                p(i+1,f_cnt) = " ";
            end
                p(i+1,f_cnt) = p(i,f_cnt)+poisson_function(i,m);
            
        end
     end
end
   
%plot it
format("shortG");
poisson_table = table(r,p(:,1),p(:,2),p(:,3),p(:,4),p(:,5),p(:,6),p(:,7),p(:,8),p(:,9),'VariableNames',{'r','m=5.5','m=6.0','m=6.5','m=7.0','m=7.5','m=8.0','m=8.5','m=9.0','m=9.5'});

disp(poisson_table);
