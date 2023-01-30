 
clear all
close all
figure('Position',[500,500,350,160]);
load('T1T2.mat')
Y=[0.02,0.04,0.08,0.16,0.32]*4;
X=XX1{1};
ax=subplot(1,2,1);
levels=[0.95,0.93,0.85,0.8,0.7,0];
[C,h]=contourf(X,Y,Z1,levels,'ShowText','on','LabelSpacing',65);
clabel(C,h,'FontSize',7,'Color','black');
% clabel(C,'Rotation',0);
cmap = [0.95, 0.95 ,0.95;0.9, 0.9 ,0.9;0.85, 0.85 ,0.85];
text(1.5e-4,1.3,'(a)');
set(ax,'XScale','log','FontSize',7,'XTick',[0.01,0.1,1,10],'LabelFontSizeMultiplier',1,'FontName','Arial','FontUnits','pixels');
% map = [
%     0.9, 0.9 ,0.9
%     0.85, 0.85 ,0.85
%     0.80, 0.80 ,0.80
%     0.75, 0.75 ,0.75
%     0.7 0.7 0.7
%     0.65 0.65 0.65];
% map1 = [
%     0.9, 0.9 ,0.9
%     0.85, 0.85 ,0.85
%     0.80, 0.80 ,0.80
%     0.75, 0.75 ,0.75
%     0.7 0.7 0.7
%     0.65 0.65 0.65];
% colormap(map)
colormap('summer')
z=xlabel('T_1({\mu}s)');
y=ylabel('{\Delta}\tau({\mu}s)');
% x.fontsize=7;
% y.fontsize=7;
load('result_check1.mat')
Z2=zeros(5,12);
for i=1:1:5
    Z2(i,1:12)=YY2{i}/1000;
end
ax=subplot(1,2,2);
[C,h]=contourf(X,Y,Z2,levels,'ShowText','on','LabelSpacing',65);
clabel(C,h,'FontSize',7,'Color','black');
% colormap(map1)
colormap('summer')
xlabel('T_\phi({\mu}s)')
ylabel('{\Delta}\tau({\mu}s)')
text(1.5e-4,1.3,'(b)');
set(ax,'XScale','log','FontSize',7,'XTick',[0.01,0.1,1,10],'LabelFontSizeMultiplier',1,'FontName','Arial','FontUnits','pixels');
