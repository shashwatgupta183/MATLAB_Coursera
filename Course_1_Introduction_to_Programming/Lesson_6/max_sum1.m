function [summa, index] = max_sum(v, n)
    l = length(v);
    if n > l
        summa = 0;
        index = -1;
        return;
    end
    
    s=sum(v(1:n));
    ind=1;
    
    for i=2:l-n+1
        c = sum(v(i:i+n-1));
        if c > s
            s = c;
            ind = i;
        end
    end
    
    summa =s;
    index =ind;
end
