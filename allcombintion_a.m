function f=aallcombintion(a)

ta=num2cell(reshape(a,[1,9]));

f=allcombination(ta{:});
