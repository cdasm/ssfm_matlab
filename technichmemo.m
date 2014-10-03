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

%this is a method to generate animation
figure
h=plot3(a(:,1),a(:,2),a(:,3));
pause(0.5);
axis equal
for ii=1:num
set(h(1),'xdata',a(1:ii,1),'ydata',a(1:ii,2),'zdata',a(1:ii,3)) ;
pause(0.1);drawnow;
saveas(h,sprintf('ww%d',ii),'jpg')%this line saves the image
end
