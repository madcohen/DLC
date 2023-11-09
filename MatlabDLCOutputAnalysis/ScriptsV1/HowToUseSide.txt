%%%%%%%%%%%%% IMPORT DATA AND SEPARATE LIMBS INTO VARIABLES %%%%%%%%%%%%%%%%%%%%
%%% Import the csv output from DLC as a numeric matrix and name it alldata
str='L7cre17_Stim1_Trial1';
fps=80;                        %change this to match video frame rate
if ~isempty(str)
    eval([str, ' =alldata;']); %rename if there is a string
end
frame=alldata(:,1);   %Frame
framems=(frame/fps)*1000;      %Convert from frame to time in ms
lf=alldata(:,2:3);             %Left forelimb
rf=alldata(:,5:6);             %Right forelimb
lh=alldata(:,8:9);             %Left hindlimb
rh=alldata(:,11:12);           %Right hindlimb
tb=alldata(:,14:15);           %Tail base
wk=str+".mat";
save(wk);
movefile(wk, "MatlabWorkspaces");


%LIMB COLORS
%% LF = Blue  [0.3 0.75 0.93]
%% RF = Purple [0.49 0.18 0.56]
%% LH = Pink  [0.91 0.43 0.73]
%% RH = Orange  [0.93 0.49 0.31]
%% TB = Yellow [0.97 0.75 0.25]


%%%%%%%%%%%%%%%%%%%%%%%%%%%%% FILL OUTLIERS %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Left Forelimb
% X
lfxc1=filloutliers(lf(:,1),'pchip','movmedian',10,'SamplePoints',frame);
lfxc2=filloutliers(lfxc1,'pchip','percentiles',[8 100],'SamplePoints',frame);
lfxc=filloutliers(lfxc2,'pchip','movmedian',10,'SamplePoints',frame);
% Y
lfyc1=filloutliers(lf(:,2),'pchip','movmedian',30,'SamplePoints',frame);
lfyc2=filloutliers(lfyc1,'clip','movmedian',frame(500),'SamplePoints',frame);
lfyc3=filloutliers(lfyc2,'previous','percentiles',[7 100],'SamplePoints',frame);
lfyc=filloutliers(lfyc3,'pchip','movmedian',30,'SamplePoints',frame);

%Right forelimb
% X
rfxc1=filloutliers(rf(:,1),'pchip','movmedian',10,'SamplePoints',frame);
rfxc=filloutliers(rfxc1,'pchip','movmedian',10,'SamplePoints',frame);
% Y
rfyc1=filloutliers(rf(:,2),'pchip','movmedian',30,'SamplePoints',frame);
rfyc2=filloutliers(rfyc1,'previous','movmedian',400,'SamplePoints',frame);
rfyc=filloutliers(rfyc2,'pchip','movmedian',30,'SamplePoints',frame);

%Left Hindlimb
% X
lhxc=filloutliers(lh(:,1),'nearest','percentiles',[2 98],'SamplePoints',frame);
% Y
lhyc=filloutliers(lh(:,2),'nearest','percentiles',[10 55],'SamplePoints',frame);

%Right Hindlimb
% X
rhxc1=filloutliers(rh(:,1),'pchip','movmedian',10,'SamplePoints',frame);
rhxc=filloutliers(rhxc1,'pchip','movmedian',10,'SamplePoints',frame);
% Y
rhyc1=filloutliers(rh(:,2),'pchip','movmedian',30,'SamplePoints',frame);
rhyc=filloutliers(rhyc1,'pchip','movmedian',30,'SamplePoints',frame);

%Tailbase
% X
tbxc1=filloutliers(tb(:,1),'pchip','movmedian',10,'SamplePoints',frame);
tbxc=filloutliers(tbxc1,'pchip','movmedian',10,'SamplePoints',frame);
% Y
tbyc1=filloutliers(tb(:,2),'pchip','movmedian',30,'SamplePoints',frame);
tbyc=filloutliers(tbyc1,'pchip','movmedian',30,'SamplePoints',frame);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% CLEAN WORKSPACE %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clearvars -except alldata str lf rf lh rh tb frame framems lfxc lfyc rfxc rfyc lhxc lhyc rhxc rhyc tbxc tbyc

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% SMOOTH DATA %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% LF
% X
lfxs=smoothdata(lfxc,'rlowess',1);
% Y
lfys=smoothdata(lfyc,'rlowess',1);

% RF
% X
rfxs=smoothdata(rfxc,'rlowess',1);
% Y
rfys=smoothdata(rfyc,'rlowess',1);

% LH
% X
lhxs=smoothdata(lhxc,'rlowess',1);
% Y
lhys=smoothdata(lhyc,'rlowess',1);
threshold=1000;
lhys(lhys>threshold)=700;

% RH
% X
rhxs=smoothdata(rhxc,'rlowess',1);
% Y
rhys=smoothdata(rhyc,'rlowess',1);

% TB
% X
tbxs=smoothdata(tbxc,'rlowess',1);
% Y
tbys=smoothdata(tbyc,'rlowess',1);


%%%%%%%%%%%%%%%%% SCATTERPLOTS OF CLEANED DATA %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
