function norM()
%%%%%%%%%%%%%%%% CREATE KS DENSITY DISTRIBUTION PRE & POST STIM %%%%%%%%%%%%%

sgtitle('Probability Distribution of Limb Position Before and After Stimulation')

%%% LEFT FORELIMB
subplot(2,4,2);
[f1,xi1]=ksdensity(prelfy);
hold on
plot(xi1,f1,'LineWidth',1.5,'color',[0.67 0.79 0.35]);
[f2,xi2]=ksdensity(postlfy);
plot(xi2,f2,'LineWidth',1.5,'color',[0.33 0.48 0.14]);
ylabel('Probability');            %Y axis shows the cumulative distribution function
xlabel('Limb Position in Pixels')   %Position of the limb in Pixels
xlim([700 1100]);
ylim([0 0.04]);
title('Left Forelimb Y Position');
legend('Pre Stimulation','Post Stimulation','FontSize',8,'Location','best')
legend box off
hold off
clear f1 f2 xi1 xi2;

subplot(2,4,1);
[f1,xi1]=ksdensity(prelfx);
hold on
plot(xi1,f1,'LineWidth',1.5,'color',[0.67 0.79 0.35]);
[f2,xi2]=ksdensity(postlfx);
plot(xi2,f2,'LineWidth',1.5,'color',[0.33 0.48 0.14]);
ylabel('Probability');            %Y axis shows the cumulative distribution function
xlabel('Limb Position in Pixels')   %Position of the limb in Pixels
xlim([500 1700]);
ylim([0 0.01]);
title('Left Forelimb X Position');
legend('Pre Stimulation','Post Stimulation','FontSize',8,'Location','best')
legend box off
hold off
clear f1 f2 xi1 xi2;

%%% RIGHT FORELIMB
subplot(2,4,6);
[f1,xi1]=ksdensity(prerfy);
hold on
plot(xi1,f1,'LineWidth',1.5,'color',[0.4 0.76 0.92]);
[f2,xi2]=ksdensity(postrfy);
plot(xi2,f2,'LineWidth',1.5,'color',[0.4 0.4 0.63]);
ylabel('Probability');           %Y axis shows the cumulative distribution function
xlabel('Limb Position in Pixels')   %Position of the limb in Pixels
xlim([700 1100]);
ylim([0 0.04]);
title('Right Forelimb Y Position');
legend('Pre Stimulation','Post Stimulation','FontSize',8,'Location','best')
legend box off
hold off
clear f1 f2 xi1 xi2;

subplot(2,4,5);
[f1,xi1]=ksdensity(prerfx);
hold on
plot(xi1,f1,'LineWidth',1.5,'color',[0.4 0.76 0.92]);
[f2,xi2]=ksdensity(postrfx);
plot(xi2,f2,'LineWidth',1.5,'color',[0.4 0.4 0.63]);
ylabel('Probability');           %Y axis shows the cumulative distribution function
xlabel('Limb Position in Pixels')   %Position of the limb in Pixels
xlim([500 1700]);
ylim([0 0.01]);
title('Right Forelimb X Position');
legend('Pre Stimulation','Post Stimulation','FontSize',8,'Location','best')
legend box off
hold off
clear f1 f2 xi1 xi2;

%%% lEFT HINDLIMB
subplot(2,4,4);
[f1,xi1]=ksdensity(prelhy);
hold on
plot(xi1,f1,'LineWidth',1.5,'color',[0.89 0.69 0.1]);
[f2,xi2]=ksdensity(postlhy);
plot(xi2,f2,'LineWidth',1.5,'color',[0.96 0.51 0.11]);
ylabel('Probability');           %Y axis shows the cumulative distribution function
xlabel('Limb Position in Pixels')   %Position of the limb in Pixels
xlim([550 1250]);
ylim([0 0.04]);
title('Left Hindlimb Y Position');
legend('Pre Stimulation','Post Stimulation','FontSize',8,'Location','best')
legend box off
hold off
clear f1 f2 xi1 xi2;

subplot(2,4,3);
[f1,xi1]=ksdensity(prelhx);
hold on
plot(xi1,f1,'LineWidth',1.5,'color',[0.89 0.69 0.1]);
[f2,xi2]=ksdensity(postlhx);
plot(xi2,f2,'LineWidth',1.5,'color',[0.96 0.51 0.11]);
ylabel('Probability');           %Y axis shows the cumulative distribution function
xlabel('Limb Position in Pixels')   %Position of the limb in Pixels
xlim([500 1700]);
ylim([0 0.01]);
title('Left Hindlimb X Position');
legend('Pre Stimulation','Post Stimulation','FontSize',8,'Location','best')
legend box off
hold off
clear f1 f2 xi1 xi2;

%%% RIGHT HINDLIMB
subplot(2,4,8);
[f1,xi1]=ksdensity(prerhy);
hold on
plot(xi1,f1,'LineWidth',1.5,'color',[0.97 0.6 0.83]);
[f2,xi2]=ksdensity(postrhy);
plot(xi2,f2,'LineWidth',1.5,'color',[0.8 0.09 0.53]);
ylabel('Probability');           %Y axis shows the cumulative distribution function
xlabel('Limb Position in Pixels')   %Position of the limb in Pixels
xlim([550 1250]);
ylim([0 0.04]);
title('Right Hindlimb Y Position');
legend('Pre Stimulation','Post Stimulation','FontSize',8,'Location','best')
legend box off
hold off
clear f1 f2 xi1 xi2;

subplot(2,4,7);
[f1,xi1]=ksdensity(prerhx);
hold on
plot(xi1,f1,'LineWidth',1.5,'color',[0.97 0.6 0.83]);
[f2,xi2]=ksdensity(postrhx);
plot(xi2,f2,'LineWidth',1.5,'color',[0.8 0.09 0.53]);
ylabel('Probability');           %Y axis shows the cumulative distribution function
xlabel('Limb Position in Pixels')   %Position of the limb in Pixels
xlim([500 1700]);
ylim([0 0.01]);
title('Right Hindlimb X Position');
legend('Pre Stimulation','Post Stimulation','FontSize',8,'Location','best')
legend box off
hold off
clear f1 f2 xi1 xi2;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% SAVE FIGURE %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

probjpg=str+"PROB.jpg";
probfig=str+"PROB.fig";
saveas(gcf,probjpg);
movefile(probjpg, "Prob");
saveas(gcf,probfig);
movefile(probfig, "Prob");

%%%%%%%%%%%%%%%%%%%%%% HISTOGRAM OF POSITIONAL DATA PRE & POST STIM%%%%%%%%%%%%%

clf
sgtitle('Distribution of Limb Position Before and After Stimulation')

%LEFT FORELIMB
subplot(4,2,5)
prelf(:,1)=prelfx;
prelf(:,2)=prelfy;
hist3(prelf,'Nbins',[19 12],'CdataMode','auto')     %image is 1920x1200
set(gca,'YDir','reverse');
xlabel('X Position in Pixels')
ylabel('Y Position in Pixels')
title('Left Forelimb Pre-Stimulation');
caxis manual
caxis([0 20]);
colormap(jet);
colorbar
view(2)
subplot(4,2,7);
postlf(:,1)=postlfx;
postlf(:,2)=postlfy;
hist3(postlf,'Nbins',[19 12],'CdataMode','auto')     %image is 1920x1200
set(gca,'YDir','reverse');
xlabel('X Position in Pixels')
ylabel('Y Position in Pixels')
title('Left Forelimb Post-Stimulation');
caxis manual
caxis([0 20]);
colormap(jet);
colorbar
view(2)

%RIGHT FORELIMB
subplot(4,2,1)
prerf(:,1)=prerfx;
prerf(:,2)=prerfy;
hist3(prerf,'Nbins',[19 12],'CdataMode','auto')     %image is 1920x1200
set(gca,'YDir','reverse');
xlabel('X Position in Pixels')
ylabel('Y Position in Pixels')
title('Right Forelimb Pre-Stimulation');
caxis manual
caxis([0 20]);
colormap(jet);
colorbar
view(2)
subplot(4,2,3);
postrf(:,1)=postrfx;
postrf(:,2)=postrfy;
hist3(postrf,'Nbins',[19 12],'CdataMode','auto')     %image is 1920x1200
set(gca,'YDir','reverse');
xlabel('X Position in Pixels')
ylabel('Y Position in Pixels')
title('Right Forelimb Post-Stimulation');
caxis manual
caxis([0 20]);
colormap(jet);
colorbar
view(2)

%LEFT HINDLIMB
subplot(4,2,6)
prelh(:,1)=prelhx;
prelh(:,2)=prelhy;
hist3(prelh,'Nbins',[19 12],'CdataMode','auto')     %image is 1920x1200
set(gca,'YDir','reverse');
xlabel('X Position in Pixels')
ylabel('Y Position in Pixels')
title('Left Hindlimb Pre-Stimulation');
caxis manual
caxis([0 20]);
colormap(jet);
colorbar
view(2)
subplot(4,2,8);
postlh(:,1)=postlhx;
postlh(:,2)=postlhy;
hist3(postlh,'Nbins',[19 12],'CdataMode','auto')     %image is 1920x1200
set(gca,'YDir','reverse');
xlabel('X Position in Pixels')
ylabel('Y Position in Pixels')
title('Left Hindlimb Post-Stimulation');
caxis manual
caxis([0 20]);
colormap(jet);
colorbar
view(2)

%RIGHT HINDLIMB
subplot(4,2,2)
prerh(:,1)=prerhx;
prerh(:,2)=prerhy;
hist3(prerh,'Nbins',[19 12],'CdataMode','auto')     %image is 1920x1200
set(gca,'YDir','reverse');
xlabel('X Position in Pixels')
ylabel('Y Position in Pixels')
title('Right Hindlimb Pre-Stimulation');
caxis manual
caxis([0 20]);
colormap(jet);
colorbar
view(2)
subplot(4,2,4);
postrh(:,1)=postrhx;
postrh(:,2)=postrhy;
hist3(postrh,'Nbins',[19 12],'CdataMode','auto')     %image is 1920x1200
set(gca,'YDir','reverse');
xlabel('X Position in Pixels')
ylabel('Y Position in Pixels')
title('Right Hindlimb Post-Stimulation');
caxis manual
caxis([0 20]);
colormap(jet);
colorbar
view(2)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% SAVE FIGURE %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
histjpg=str+"HIST.jpg";
histfig=str+"HIST.fig";
saveas(gcf,histjpg);
movefile(histjpg, "Hist");
saveas(gcf,histfig);
movefile(histfig, "Hist");
