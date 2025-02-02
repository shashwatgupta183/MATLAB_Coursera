function x=randint(a,b)
x=randi(10,a,b);
fprintf('Last element of last row is %d', x(a,b));
end
