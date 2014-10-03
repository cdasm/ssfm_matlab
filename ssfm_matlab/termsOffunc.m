function re=termsOffunc(f,x)


m=0;
t=f;

while ~(t==0)
    t=diff(t,x);
    m=m+1;
end

t=f;

dl=cell(m,1);

for i=1:m
    dl{i}=t;
    t=diff(t,x);
end

re=cell(m,1);

for i=m:-1:1
    bb=0;
    st=m;
    while st>i
        bb=bb+re{st}*x^(st-i)*(factorial(st-1)/factorial(st-i));
        st=st-1;
    end
    
    re{i}=(dl{i}-bb)/factorial(i-1);
end

