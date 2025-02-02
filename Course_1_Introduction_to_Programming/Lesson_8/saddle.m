function indices=saddle(M)
indices=[];
[r,c]=size(M);
for i=1:r
    for j=1:c
        max=M(i,1);
        min=M(1,j);
        for k=2:c
            if M(i,k)>max
                max=M(i,k);
            end
        end
        for k=2:r
            if M(k,j)<min
                min=M(k,j);
            end
        end
        if M(i,j)==max && M(i,j)==min
            indices=[indices;[i,j]];
        end
    end
end
end