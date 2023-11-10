%generate n_column
n=['1'];
cnt=1;
for n_cnt=1:7
n(cnt)=int2str(n_cnt);
cnt =cnt + 1 ;
    for space=1:n_cnt
    n(cnt)=" ";
    cnt=cnt+1;
    end
end

%generate r_column
r=['1'];
cnt=1;
for r_cnt=1:7
for r_num=0:r_cnt
r(cnt)=int2str(r_num);
cnt = cnt + 1;
end
end

%deal with each p
p=zeros(35,1);
p_initial=[0.1;0.2;0.25;0.3;0.4;0.5;0.6;0.7;0.8;0.9];
cnt=1;
for p_index=1:10
for p_n=1:7
    for p_r=0:p_n
        if p_r==0
        bino_p(cnt) = binomial_function(p_r,p_n,p_initial(p_index));
        cnt = cnt +1;
        else
        bino_p(cnt) = bino_p(cnt-1)+binomial_function(p_r,p_n,p_initial(p_index));
        cnt = cnt +1;
        end
    end

end
    for p_cnt=1:35
        p(p_cnt,p_index)=bino_p(1,(p_cnt+(p_index-1)*35));
    end
end

%make the table
binomial_table = table(n,r,p(:,1),p(:,2),p(:,3),p(:,4),p(:,5),p(:,6),p(:,7),p(:,8),p(:,9),p(:,10),'VariableNames',{'n','r','p=0.1','p=0.2','p=0.25','p=0.3','p=0.4','p=0.5','p=0.6','p=0.7','p=0.8','p=0.9'});
format("short");
disp(binomial_table);