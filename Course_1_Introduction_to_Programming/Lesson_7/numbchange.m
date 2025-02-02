function n=numbchange(x,y)
n1=5;
n2=10;
if (x+y)<=n2
    n=(x+y);
% elseif (rem((y+x),(n2-n1))==1) % && (rem(fix(y/(n2-n1)), 2)==1)
%     n=n1 + rem((y+x),(n2-n1))-1;
% elseif (rem((y+x),(n2-n1))==0) && (rem(fix(y/(n2-n1)), 2)==0)
%     n=n2;
else
    n=n1+rem((x+y),(n2-n1))-1;
end