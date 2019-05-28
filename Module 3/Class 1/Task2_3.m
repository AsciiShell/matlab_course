ezplot(@(x,y)myfun(x,y,2))


function z = myfun(x,y,k)
z = x.^k - y.^k - 1;
end


