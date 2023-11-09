function [rfp, lhp, rhp, lfp, tbp]=cleanscat(lfxs,lfys,rfxs, rfys, lhxs, lhys, rhxs, rhys, tbxs, tbys)
%%%%%%%%%%%%%%%% SCATTERPLOTS OF CLEANED DATA %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%LIMB COLORS
%% LF = Blue  [0.3 0.75 0.93]
%% RF = Purple [0.49 0.18 0.56]
%% LH = Pink  [0.91 0.43 0.73]
%% RH = Orange  [0.93 0.49 0.31]
%% TB = Yellow [0.97 0.75 0.25]

% RIGHT FORELIMB
subplot(2,3,1)
rfp=scatter(rfxs,rfys,[],[0.49 0.18 0.56]);
linkdata on
rfp.XDataSource = 'rfxs';
rfp.YDataSource = 'rfys';
title('Right Forelimb')
xlabel('X Position in Pixels');
ylabel('Y Position in Pixels');
xlim([0 2000]);
ylim([0 1400]);
set(gca,'YDir','reverse');

% LEFT HINDLIMB
subplot(2,3,5)
lhp=scatter(lhxs,lhys,[], [0.91 0.43 0.73]);
linkdata on
lhp.XDataSource = 'lhxs';
lhp.YDataSource = 'lhys';
title('Left Hindlimb')
xlabel('X Position in Pixels');
ylabel('Y Position in Pixels');
xlim([0 2000]);
ylim([0 1400]);
set(gca,'YDir','reverse');

% RIGHT HINDLIMB
subplot(2,3,4)
rhp=scatter(rhxs,rhys,[],[0.93 0.49 0.31]);
linkdata on
rhp.XDataSource = 'rhxs';
rhp.YDataSource = 'rhys';
title('Right Hindlimb')
xlabel('X Position in Pixels');
ylabel('Y Position in Pixels');
xlim([0 2000]);
ylim([0 1400]);
set(gca,'YDir','reverse');

% LEFT FORELIMB
subplot(2,3,2)
lfp=scatter(lfxs,lfys,[],[0.3 0.75 0.93]);
linkdata on
lfp.XDataSource = 'lfxs';
lfp.YDataSource = 'lfys';
title('Left Forelimb')
xlabel('X Position in Pixels');
ylabel('Y Position in Pixels');
xlim([0 2000]);
ylim([0 1400]);
set(gca,'YDir','reverse');

% TAIL BASE
subplot(2,3,[3,6]);
tbp=scatter(tbxs,tbys,[],[0.97 0.75 0.25]);
linkdata on
tbp.XDataSource = 'tbxs';
tbp.YDataSource = 'tbys';
title('Tail Base')
xlabel('X Position in Pixels');
ylabel('Y Position in Pixels');
xlim([0 2000]);
ylim([0 1400]);
set(gca,'YDir','reverse');
