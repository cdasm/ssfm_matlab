function f=mylength(a)
siz=size(a);

if(iscell(a))
    if siz(1)==1
        f=siz(2);
    else
        f=siz(1);
    end
else
    f=siz(1);
end

end