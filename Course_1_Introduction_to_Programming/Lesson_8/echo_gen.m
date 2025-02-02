function output=echo_gen(in,fs,delay,gain)
s=round(fs*delay);
ds=floor(s);
sg=zeros(length(in)+ds,1);
sg(1:length(in))=in;
esg=zeros(length(in)+ds,1);
esg(ds+(1:length(in*gain)))=in*gain;
output=sg+esg;
p=max(abs(output));
if p>1
output=output./p;
end
end