clear all
close all

corg = [0.8500    0.3250    0.0980];
cblu = [0    0.4470    0.7410];
% f=figure('Position',[500,500,350,260]);
figure();
ax=subplot(4,1,1);
load('MNIST_check')
% histogram(x1,100)
% hold on
% histogram(x2,100)
h1=histogram(x2,100,'FaceColor',corg);
hold on
h2=histogram(x1,100,'FaceColor',cblu);
text(0,40,'$\vec{x}$','Interpreter','latex');
text(-0.95,70,'(a)');
legend('Digit "4"','Digit "2"','box','off');
xlim([-1,1])
ylim([0,80])
set(ax,'FontSize',7,'XTickLabel',{},'YTick',[0,30,60],'YTickLabel',{'0','3','6'});
% legend('digit 2','digit 4')
% y=ylabel('sample number');
% y.FontSize=7;
ax=subplot(4,1,2);
load('input1_check')
% histogram(x1,100)
% hold on
% histogram(x2,100)
h1=histogram(x2,100,'FaceColor',corg);
hold on
h2=histogram(x1,100,'FaceColor',cblu);
text(0,40,'$\vec{\theta}_{\rm{En}}$','Interpreter','latex');
text(-0.95,70,'(b)');
ylabel('Sample Number/10')
xlim([-1,1])
ylim([0,80])
set(ax,'FontSize',7,'XTickLabel',{},'YTick',[0,30,60],'YTickLabel',{'0','3','6'});
% y=ylabel('sample number');
% y.FontSize=7;
load('input2_check')
ax=subplot(4,1,3);
% histogram(x1,100)
% hold on
% histogram(x2,100)
h1=histogram(x2,100,'FaceColor',corg);
hold on
h2=histogram(x1,100,'FaceColor',cblu);
text(0,40,'$|\psi(t_E)\rangle$','Interpreter','latex');
text(-0.95,70,'(c)');
xlim([-1,1])
ylim([0,80])
set(ax,'FontSize',7,'XTickLabel',{},'YTick',[0,30,60],'YTickLabel',{'0','3','6'});
% y=ylabel('sample number');
% y.FontSize=7;
load('input3_check')
ax=subplot(4,1,4);
% histogram(x1,100)
% hold on
% histogram(x2,100)
h1=histogram(x2,100,'FaceColor',corg);
hold on
h2=histogram(x1,100,'FaceColor',cblu);
text(0,40,'$|\psi(t_{E+I})\rangle$','Interpreter','latex');
text(-0.95,70,'(d)');
xlim([-1,1])
ylim([0,80])
set(ax,'FontSize',7,'YTick',[0,30,60],'YTickLabel',{'0','3','6'});
% y=ylabel('sample number');
% y.FontSize=7;
x=xlabel('Projected Points');
% x=xlabel('projected points x |\psi\rangle');
x.FontSize=8;
x.FontName='Times New Roman';
% x.FontAngle='Italic';
x.FontUnits='pixels';
