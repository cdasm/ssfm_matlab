function [transition,rotation] =estimateTwoFrms(skpt1,ind1,skpt2,ind2,kpts,ind,status)


match=matchBetweenTwoV(ind1,ind2);

[tran,rot]=TARfromTPntSet(skpt1(match(:,1),:),skpt2(match(:,2),:));

gind=status>0;
match=matchBetweenTwoV(ind2,ind(gind,:));
if ~isempty(match)
    s=bestScale(kpts(match(:,2),:),tran,rot,skpt2(match(:,1),:));
    tran=tran*s;
end

transition=tran;
rotation=rot;

end