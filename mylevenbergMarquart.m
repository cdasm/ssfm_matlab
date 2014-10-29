function para_est=mylevenbergMarquart(data_l,obs_l,func,jfunc,para_init)
% data_l is the dataset, it is of the form Ndata*dimension
% obs_l is the objective values, it is of the form 1*Ndata
% func is a function handler, it is of the form value=func(data,parameters)
% jfunc is a function handler, it is of the form [differitials over all
% parameters for one data]=jfunc(data,parameters)
% para_init is the initial parameter set, it is of the form 1*Nparams

Ndata=length(obs_l);
Nparams=length(para_init);
n_iters=70;
lamda=0.01;
 
% step1: ????
updateJ=1;
para_est=para_init;
dis_init=zeros(1,Ndata);

for it=1:n_iters
    if updateJ==1
       J=zeros(Ndata,Nparams);
       for i=1:Ndata
           % for j=1:Nparams
               %J(i,:)=jfunc(data_l(i,1),data_l(i,2),data_l(i,3),x_est,y_est,z_est);
               J(i,:)=jfunc(data_l(i,:),para_est);
           % end
        end
        for i=1:Ndata
            %dis_init(i)=func(data_l(i,1),data_l(i,2),data_l(i,3),x_est,y_est,z_est);
            dis_init(i)=func(data_l(i,:),para_est);
        end
        d=obs_l-dis_init;
        H=J'*J;
        if it==1
            e=dot(d,d);
        end
    end
    H_lm=H+(lamda*eye(Nparams,Nparams));
    %dp=inv(H_lm)*(J'*d(:));
    dp=(d*J)/H_lm;
    %g=J'*d(:);
    %x_lm=x_est+dp(1);
    %y_lm=y_est+dp(2);
    %z_lm=z_est+dp(3);
    para_lm=para_est+dp;
    for i=1:Ndata
         %dis_init(i)=func(data_l(i,1),data_l(i,2),data_l(i,3),x_lm,y_lm,z_lm);
         dis_init(i)=func(data_l(i,:),para_lm);
    end
    d=obs_l-dis_init;
    e_lm=dot(d,d);
    if e_lm<e
        lamda=lamda/10;
        %x_est=x_lm;
        %y_ext=y_lm;
        %y_est=y_lm;
        %z_est=z_lm;
        para_est=para_lm;
        e=e_lm;
        disp(e);
        updateJ=1;
    else
        updateJ=0;
        lamda=lamda*10;
    end
end
