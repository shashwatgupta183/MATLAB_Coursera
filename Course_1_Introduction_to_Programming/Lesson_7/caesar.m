function coded=caesar(x,y)
l1=32;
m=126;
l=m-l1;
c=[];
for i=1:length(x)
    
y=rem(y,(m-l));
coded=char(x+y-length(x));