function [a,s]=myRand(low,high,x,y)
a=low+(high-low)*rand(x,y);
v=a(:);
s=sum(v);
end
