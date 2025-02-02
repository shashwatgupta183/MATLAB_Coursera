function [summa,index]=max_sum(v, n)
l=length(v);
if n>l
    summa=0;
    index=-1;
    return
end
v1=sort(v,'descend');
v2=v1(1:n);
% v2=v2(v2>=0)
% summa=sum(v2);

for i=1:l
    for j=1:length(v2)
        
        if v2(j)==v(i);
            index=i;
            break
        end
        if index==i
            break
        end
    end
    if index==i
        break
    end
    

end
end
for i=index:n
    summa=summa+v(i)
end