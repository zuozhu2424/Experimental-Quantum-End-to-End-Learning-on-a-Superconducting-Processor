% exp2q_loss: experimental learning curve: 2 qubit experiment
% simu2q_loss: numerical learning curve: 2 qubit experiment

% exp3q_loss: experimental learning curve: 3 qubit experiment
% simu3q_loss: numerical learning curve: 3 qubit experiment

clear all
close all;
load('Fig2_data.mat');

corg = [0.8500    0.3250    0.0980];
cblu = [0    0.4470    0.7410];
ff=figure('Position',[400,200,340,180]);

ax2=subplot(1,2,1);
p1=plot(ax2,movmean(simu2q_loss,4),'.-','Color',cblu);
hold on
p2=plot(ax2,movmean(exp2q_loss,4),'.-','Color',corg);
hold off
ylim([0,1])
set(ax2,'FontSize',7,'YTick',[0,0.25,0.5,0.75,1],'XTick',[0,100,200,300],'XTickLabel',{'0','1','2','3'},'ZTick',[0],'ZTickLabel',{'0'});
legend([p2,p1],'Exp.','Simu.','FontSize',7,'box','off');
text(-100,1,'(a)');
t=title('2-Digit Task');
x=xlabel('Number of Training Iterations/100');
y=ylabel('$\rm{Loss Value} \mathcal{L}$','Interpreter','latex');
t.FontSize=7;
x.FontSize=7;
y.FontSize=7;


ax3=subplot(1,2,2);
p1=plot(ax3,movmean(simu3q_loss,4),'.-','Color',cblu);
hold on
p2=plot(ax3,movmean(exp3q_loss,4),'.-','Color',corg);
hold off
ylim([0,1])
xlim([0,502])
legend([p2,p1],'Exp.','Simu.','FontSize',7,'box','off');

t=title('4-Digit Task');
set(ax3,'FontSize',7,'YTick',[0,0.25,0.5,0.75,1],'XTick',[0,100,200,300,400,500],'XTickLabel',{'0','1','2','3','4','5'},'ZTick',[0],'ZTickLabel',{'0'});
t.FontSize=7;
y=ylabel('$\rm{Loss Value} \mathcal{L}$','Interpreter','latex');
y.FontSize=7;
text(-100/3*5,1,'(b)');

opos=ff.OuterPosition;
set(ax3,'FontSize',7);
opos(3)=340;
set(ff,'OuterPosition',opos);