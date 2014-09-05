function f=allcombintion_a(a)

ta=num2cell(reshape(a,[1,9]));

f=allcombination(ta{:});
