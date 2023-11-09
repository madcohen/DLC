function [lfxds,lfyds,lhxds,lhyds,rfxds,rfyds,rhxds,rhyds]= rawscat(rfx,rfy,lfx,lfy,rhx,rhy,lhx,lhy)
%Plot the trajectory of the limbs
subplot(3,2,[1,2]);
hold on
scatter(rfx,rfy,[],[0 0.4470 0.7410]);
scatter(lhx,lhy,[],[0.8500 0.3250 0.0980]);
scatter(rhx,rhy,[],[0.9290 0.6940 0.1250]);
scatter(lfx,lfy,[],[0.4660 0.6740 0.1880]);
title('All Limbs Trajectory (Raw Data)');
legend({'Right Forelimb','Left Hindlimb','Right Hindlimb','Left Forelimb'},'Location','northeastoutside');

xlabel('X Position in Pixels');
ylabel('Y Position in Pixels');
set(gca,'YDir','reverse');
hold off

%LF
subplot(3,2,5)
xlim([40 1240])
ylim([101 451])
scatter(lfx,lfy,[],[0.4660 0.6740 0.1880]);
title('Left Forelimb Trajectory');
xlabel('X Position in Pixels');
ylabel('Y Position in Pixels');
set(gca,'YDir','reverse');

xlim([103 803])
ylim([175 475])
[lfxds,lfyds] = datastats(lfx,lfy);

%RF
subplot(3,2,3)
scatter(rfx,rfy,[],[0 0.4470 0.7410]);
title('Right Forelimb Trajectory');
xlabel('X Position in Pixels');
ylabel('Y Position in Pixels');
set(gca,'YDir','reverse');

xlim([70 970])
ylim([163 463])
[rfxds,rfyds] = datastats(rfx,rfy);

%LH
subplot(3,2,6)
scatter(lhx,lhy,[],[0.8500 0.3250 0.0980]);
title('Left Hindlimb Trajectory');
xlabel('X Position in Pixels');
ylabel('Y Position in Pixels');
set(gca,'YDir','reverse');
[lhxds,lhyds] = datastats(lhx,lhy);

%RH
subplot(3,2,4)
scatter(rhx,rhy,[],[0.9290 0.6940 0.1250]);
title('Right Hindlimb Trajectory');
[rhxds,rhyds] = datastats(rhx,rhy);

xlim([200 1100]);
ylim([340 440]);
xlabel('X Position in Pixels');
ylabel('Y Position in Pixels');
set(gca,'YDir','reverse');

xlim([308 1208])
ylim([276.4 376.4])