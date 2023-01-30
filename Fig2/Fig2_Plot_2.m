% exp2q_specmat: first 2 qubit result
% exp2q_2: second 2 qubit result
% exp2q_3: third 2 qubit result
% exp3q_specmat: first 3 qubit result
% exp3q_2: second 3 qubit result
% exp3q_3: third 3 qubit result
% 
% simu2q_specmat: numerical 2 qubit result
% simu3q_specmat: numerical 3 qubit result

close all
clear all
load('Fig2_2_data.mat');

spec2q_all=zeros([2,2,3]);
spec2q_all(:,:,1)=exp2q_specmat;
spec2q_all(:,:,2)=exp2q_2;
spec2q_all(:,:,3)=exp2q_3;

std2q=std(spec2q_all,1,3);

spec3q_all=zeros([4,4,3]);
spec3q_all(:,:,1)=exp3q_specmat;
spec3q_all(:,:,2)=exp3q_2;
spec3q_all(:,:,3)=exp3q_3;

std3q=std(spec3q_all,1,3);
% T1_sweep=zeros(6,10);
% T2_sweep=zeros(6,11);

% T1_sweep(:,1)=[100 99.8 99.5 99.0 98.4 98.1 98.1 98.1 98.1; ]';
% T1_sweep(:,2)=[100 99.8 99.5 99.0 98.4 98.1 98.1 98.1 98.1; ]';
width=120;
height=75;
pbar=[2.6,2.6,1];
fpos=[400,200,width,height];

f1=figure('Position',fpos);
% ax1=subplot(2,2,1);
ax1=gca;
% imagesc(exp2q_specmat,[0,100]);
b=bar3(exp2q_specmat);
for k = 1:length(b)
    zdata = b(k).ZData;
    b(k).CData = zdata;
    b(k).FaceColor = 'interp';
end

hold on
b=bar3(std2q+exp2q_specmat);
for k = 1:length(b)
    zdata = b(k).ZData;
    b(k).CData = zdata;
    b(k).FaceColor = 'none';
end
set(ax1,'XTick',[1,2],'XTickLabel',{'0','2'},'YTick',[1,2],'YTickLabel',{'g','e'},'FontSize',7,'View',[-20,30],'PlotBoxAspectRatio',pbar,'LabelFontSizeMultiplier',1,'FontName','Arial','FontUnits','pixels');
set(f1,'Color','White');
opos=f1.Position;
% set(ax3,'FontSize',7);
opos(3)=width;
set(f1,'Position',fpos);
title('Exp. 2-Digit Task');
text(-0.3,1,2.5,'(c)');

f2=figure('Position',fpos);
% ax1=subplot(2,2,2);
ax1=gca;
% imagesc(simu2q_specmat,[0,100]);
b=bar3(simu2q_specmat);
for k = 1:length(b)
    zdata = b(k).ZData;
    b(k).CData = zdata;
    b(k).FaceColor = 'interp';
end
set(gca,'XTick',[1,2],'XTickLabel',{'0','2'},'YTick',[1,2],'YTickLabel',{'g','e'},'FontSize',7,'View',[-20,30],'PlotBoxAspectRatio',pbar,'LabelFontSizeMultiplier',1,'FontName','Arial','FontUnits','pixels');
set(f2,'Color','White');
opos=f2.Position;
% set(ax3,'FontSize',7);
opos(3)=width;
set(f2,'Position',fpos);
title('Simu. 2-Digit Task');
text(-0.3,1,2.5,'(d)');

f3=figure('Position',fpos);
% ax3=subplot(2,2,3);
ax3=gca;
% imagesc(exp3q_specmat,[0,100]);
b=bar3(exp3q_specmat);
for k = 1:length(b)
    zdata = b(k).ZData;
    b(k).CData = zdata;
    b(k).FaceColor = 'interp';
end

hold on
b=bar3(std3q+exp3q_specmat);
for k = 1:length(b)
    zdata = b(k).ZData;
    b(k).CData = zdata;
    b(k).FaceColor = 'none';
end
set(ax3,'XTick',[1,2,3,4],'XTickLabel',{'0','2','7','9'},'YTick',[1,2,3,4],'YTickLabel',{'gg','ge','eg','ee'},'FontSize',7,'View',[-20,30],'PlotBoxAspectRatio',pbar,'LabelFontSizeMultiplier',1,'FontName','Arial','FontUnits','pixels');
set(f3,'Color','White');
opos=f3.Position;
% set(ax3,'FontSize',7);
opos(3)=width;
set(f3,'Position',fpos);
title('Exp. 4-Digit Task');
text(-1.5,1,2.5,'(e)');

f4=figure('Position',fpos);
ax4=gca;
% ax4=subplot(2,2,4);
% imagesc(simu3q_specmat,[0,100]);
b=bar3(simu3q_specmat);
for k = 1:length(b)
    zdata = b(k).ZData;
    b(k).CData = zdata;
    b(k).FaceColor = 'interp';
end

% hold on
% b=bar3(simu3q_specmat+0.02);
% for k = 1:length(b)
%     zdata = b(k).ZData;
%     b(k).CData = zdata;
%     b(k).FaceColor = 'none';
% end

% hold on
% b=bar3(simu3q_specmat-0.02);
% for k = 1:length(b)
%     zdata = b(k).ZData;
%     b(k).CData = zdata;
%     b(k).FaceColor = 'none';
% end

set(ax4,'XTick',[1,2,3,4],'XTickLabel',{'0','2','7','9'},'YTick',[1,2,3,4],'YTickLabel',{'gg','ge','eg','ee'},'FontSize',7,'View',[-20,30],'PlotBoxAspectRatio',pbar,'LabelFontSizeMultiplier',1,'FontName','Arial','FontUnits','pixels');
set(f4,'Color','White');
opos=f4.Position;
% set(ax3,'FontSize',7);
opos(3)=width;
set(f4,'Position',fpos);
title('Simu. 4-Digit Task');
text(-1.5,1,2.5,'(f)');
% hold on
% scatter3(ax4,1,1,1,'*')
