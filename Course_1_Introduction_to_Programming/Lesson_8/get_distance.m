function d=get_distance(c1, c2)
persistent dist;
if isempty(dist)
    [~,~,raw]=xlsread('Distances.xlsx');
    c=raw(2:end,1);
    data=cell2mat(raw(2:end, 2:end));
    map=containers.Map(cellfun(@strtrim,c,'UniformOutput',false),1:numel(c));
    dist.data=data;
    dist.m=map;
end
c1=strtrim(c1);
c2=strtrim(c2);
if isKey(dist.m, c1) && isKey(dist.m, c2)
    idx1=dist.m(c1);
    idx2=dist.m(c2);
    dist2=dist.data(idx1, idx2);
    if isnan(dist2)
        d=-1;
    else
        d=dist2;
    end
else
    d=-1;
end
end