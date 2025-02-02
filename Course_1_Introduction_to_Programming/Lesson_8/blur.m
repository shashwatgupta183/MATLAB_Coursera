function output=blur(img,w)
[r,c]=size(img);
B=nan(size(img)+2*w);
B(w+1:end-w,w+1:end-w)=img;
output=0*img;
for i=w+1:r+w
    for j=w+1:c+w
        t=B(i-w:i+w,j-w:j+w);
        output(i-w,j-w)=mean(t(~isnan(t)));
    end
end
end