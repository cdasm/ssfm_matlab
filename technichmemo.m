%technical memos

%matlab timer

tic; 

for i=1:50
transitionAndRotation_a(pt1,pt2);
end
toc

%save plot as jpg

h=figure;
plot(x,y,'-bs','Linewidth',1.4,'Markersize',10);
% ...
saveas(h,name,'fig')
saveas(h,name,'jpg')

hgexport(gcf, 'figure1.jpg', hgexport('factorystyle'), 'Format', 'jpeg');

%waitfor buttonpress

waitforbuttonpress;

%matlab parllel

matlabpool('open',4);
parfor i=1:3, c(:,i) = eig(rand(1000)); end
matlabpool('close');