function tr= transitionEstimation(fn)

mat=load(fn);
[a,b,c]=singular_value_rpca(mat,0.11);
oup=fopen(sprintf('%s.error',fn),'w');
n=size(b,1);
fprintf(oup,'%d\n',n);
for i=1:n
    fprintf(oup,'%f ',b(i,:));
    fprintf(oup,'\n');
end
fclose(oup);

[s,v,d]=svd(a'*a);

e=reshape(d(:,9)',3,3);


EtE=e'*e;
trace=EtE(1,1)+EtE(2,2)+EtE(3,3);
trace=2.0/trace;
e=e*sqrt(trace);
if((1 - EtE(1,1)) > (1 - EtE(2,2)))		
		
        if((1 - EtE(1,1)) > (1 - EtE(3,3)))
			cand_e = 1;
		else 
			cand_e = 3;
        end
        
    else
		
		if((1 - EtE(2,2)) > (1 - EtE(3,3)))
			cand_e = 2;
		else
			cand_e = 3;
        end
end

switch(cand_e)
    case 1
        tr(1) = sqrt(1.0 - EtE(1,1));
        tr(2) = -EtE(1,2)/tr(1);
        tr(3) = -EtE(1,3)/tr(1);

    case 2
        tr(2) = sqrt(1.0 - EtE(2,2)); 
        tr(1) = - EtE(1,2)/tr(2) ;
        tr(3) = - EtE(2,3)/tr(2) ;

    case 3
        tr(3) = sqrt(1.0 - EtE(3,3)) ;
        tr(1) = -EtE(1,3)/tr(3) ;
        tr(2) = -EtE(2,3)/tr(3) ;

end


[es,ev,ed]=svd(e);

tr= ed(:,3);
tr=tr';
oup=fopen(sprintf('%s.trans',fn),'w');
fprintf(oup,'%f ',tr(1,:));
fclose(oup)
end