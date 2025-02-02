v=[1,2,3,4,5]
w = []
for ii = 1:length(v)
 if v(ii) >= 0
 w = [w,v(ii)]
 end
end
x=v(v>=0)