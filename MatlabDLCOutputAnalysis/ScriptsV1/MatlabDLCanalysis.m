%to use this script import the csv from deeplabcut as a numeric matrix with unimportable cells removed
%*******TITLE THE IMPORT alldata
%THE ABOVE IS SUPER IMPORTANT THE SCRIPT WILL NOT WORK UNLESS YOU TITLE THE DATA alldata
%Make sure that you DO NOT change the order of the columns in the csv, that will mess everything up
frame = alldata(:,1);
rfx=alldata(:,2);
rfy=alldata(:,3);
lfx=alldata(:,5);
lfy=alldata(:,6);
rhx=alldata(:,8);
rhy=alldata(:,9);
lhx=alldata(:,11);
lhy=alldata(:,12);
prompt='Enter the fps';
fps=input (prompt);
framems=(frame/fps)*1000;
meanlfy=mean(lfy);
meanrfy=mean(rfy);
meanlhy=mean(lhy);
meanrhy=mean(rhy);

%Plot the trajectory of the limbs
hold on
scatter(rfx,rfy,[],[0 0.4470 0.7410]);
scatter(lhx,lhy,[],[0.8500 0.3250 0.0980]);
scatter(rhx,rhy,[],[0.9290 0.6940 0.1250]);
scatter(lfx,lfy,[],[0.4660 0.6740 0.1880]);
title('All Limbs Trajectory');
legend({'Right Forelimb','Left Hindlimb','Right Hindlimb','Left Forelimb'},'Location','northeastoutside');

xlabel('X Position in Pixels');
ylabel('Y Position in Pixels');
set(gca,'YDir','reverse');
hold off
scatter(lfx,lfy,[],[0.4660 0.6740 0.1880]);
title('Left Forelimb Trajectory');
xlabel('X Position in Pixels');
ylabel('Y Position in Pixels');
set(gca,'YDir','reverse');
[lfxds,lfyds] = datastats(lfx,lfy);
scatter(rfx,rfy,[],[0 0.4470 0.7410]);
title('Right Forelimb Trajectory');
xlabel('X Position in Pixels');
ylabel('Y Position in Pixels');
set(gca,'YDir','reverse');
[rfxds,rfyds] = datastats(rfx,rfy);
scatter(lhx,lhy,[],[0.8500 0.3250 0.0980]);
title('Left Hindlimb Trajectory');
xlabel('X Position in Pixels');
ylabel('Y Position in Pixels');
set(gca,'YDir','reverse');
[lhxds,lhyds] = datastats(lhx,lhy);
scatter(rhx,rhy,[],[0.9290 0.6940 0.1250]);
title('Right Hindlimb Trajectory');
[rhxds,rhyds] = datastats(rhx,rhy);

xlim([200 1100]);
ylim([340 440]);
xlabel('X Position in Pixels');
ylabel('Y Position in Pixels');
set(gca,'YDir','reverse');



%Figure out the time that each paw is on the ground (stance time)
prompt='Enter the floor value';
floorval=input (prompt);
lfstance=lfy;
lfstance(lfstance>floorval)=nan;
lfstanceave=mean(lfstance,'omitnan');
rfstance=rfy;
rfstance(rfstance>floorval)=nan;
rfstanceave=mean(rfstance,'omitnan');
lhstance=lhy;
lhstance(lhstance>floorval)=nan;
lhstanceave=mean(lhstance,'omitnan');
rhstance=rhy;
rhstance(rhstance>floorval)=nan;
rhstanceave=mean(rhstance,'omitnan');

%Set up data for plotting stance times
%Left forelimb
lfval=lfstanceave;
%right forelimb
rfval=rfstanceave;
%left hindlimb
lhval=lhstanceave;
%right hindlimb
rhval=rhstanceave;

lfstance(lfstance>0)=lfval;
rfstance(rfstance>0)=rfval;
lhstance(lhstance>0)=lhval;
rhstance(rhstance>0)=rhval;

%Plot the stance times
x=framems;
y1=lfstance;
sz=60;
scatter(x,y1,sz,'filled',"square","MarkerFaceColor",[0.4660 0.6740 0.1880]);
hold on
y2=rfstance;
scatter(x,y2,sz,'filled',"square","MarkerFaceColor",[0 0.4470 0.7410]);
y3=lhstance;
scatter(x,y3,sz,'filled',"square","MarkerFaceColor",[0.8500 0.3250 0.0980]);
y4=rhstance;
scatter(x,y4,sz,'filled',"square","MarkerFaceColor",[0.9290 0.6940 0.1250]);
xlim([0 10000]);
xlabel('Time (ms)');
set(gca,'YDir','reverse');
ylabel('Y Position in Pixels');
legend({'Left Forelimb','Right Forelimb','Left Hindlimb','Right Hindlimb'},'Location','northeastoutside');
hold off

%Vizualize the stance times of each limb
rfstancetime=([frame,rfstance]);
lfstancetime=([frame,lfstance]);
rhstancetime=([frame,rhstance]);
lhstancetime=([frame,lhstance]);
%remove nan
rmlf = rmmissing(lfstancetime);
rmrf = rmmissing(rfstancetime);
rmlh = rmmissing(lhstancetime);
rmrh = rmmissing(rhstancetime);
%get the total number of frames that the paw is on the ground & convert to
%miliseconds
rmlf(rmlf(:,1)>=0)=1;
lfgndtime = (sum(rmlf(:,1))/13)*1000;
rmrf(rmrf(:,1)>=0)=1;
rfgndtime = (sum(rmrf(:,1))/13)*1000;
rmrh(rmrh(:,1)>=0)=1;
rhgndtime = (sum(rmrh(:,1))/13)*1000;
rmlh(rmlh(:,1)>=0)=1;
lhgndtime = (sum(rmlh(:,1))/13)*1000;

%Bar graph of average stance time
cst = categorical({'Left Forelimb','Right Forelimb','Right Hindlimb','Left Hindlimb'});
stancetimes = [lfgndtime rfgndtime rhgndtime lhgndtime];
b=bar(cst,stancetimes,'FaceColor',"flat");
b.CData(1,:) = [0.4660 0.6740 0.1880];
b.CData(2,:) = [0.8500 0.3250 0.0980];
b.CData(3,:) = [0 0.4470 0.7410];
b.CData(4,:) = [0.9290 0.6940 0.1250];
ylabel('Time (ms)');
title('Average Stance Time For Each Paw');

%Now lets look at swing times
%Figure out the time that each paw is on the ground (stance time)
lfswing=lfy;
lfswing(lfswing<floorval)=nan;
lfswingave=mean(lfswing,'omitnan');
rfswing=rfy;
rfswing(rfswing<floorval)=nan;
rfswingave=mean(rfswing,'omitnan');
lhswing=lhy;
lhswing(lhswing<floorval)=nan;
lhswingave=mean(lhswing,'omitnan');
rhswing=rhy;
rhswing(rhswing<floorval)=nan;
rhswingave=mean(rhswing,'omitnan');

%set up to vizualize the swing times of each limb
rfswingtime=([frame,rfswing]);
lfswingtime=([frame,lfswing]);
rhswingtime=([frame,rhswing]);
lhswingtime=([frame,lhswing]);
%remove nan
rmlfsw = rmmissing(lfswingtime);
rmrfsw = rmmissing(rfswingtime);
rmlhsw = rmmissing(lhswingtime);
rmrhsw = rmmissing(rhswingtime);
%get the total number of frames that the paw is on the ground & convert to
%miliseconds
rmlfsw(rmlfsw(:,1)>=0)=1;
lfairtime = (sum(rmlfsw(:,1))/13)*1000;
rmrfsw(rmrfsw(:,1)>=0)=1;
rfairtime = (sum(rmrfsw(:,1))/13)*1000;
rmrhsw(rmrhsw(:,1)>=0)=1;
rhairtime = (sum(rmrhsw(:,1))/13)*1000;
rmlhsw(rmlhsw(:,1)>=0)=1;
lhairtime = (sum(rmlhsw(:,1))/13)*1000;

%Make bar graph of swing times for each paw
csw = categorical({'Left Forelimb','Right Forelimb','Right Hindlimb','Left Hindlimb'});
swingtimes = [lfairtime rfairtime rhairtime lhairtime];
b=bar(csw,swingtimes,'FaceColor',"flat");
b.CData(1,:) = [0.4660 0.6740 0.1880];
b.CData(2,:) = [0.8500 0.3250 0.0980];
b.CData(3,:) = [0 0.4470 0.7410];
b.CData(4,:) = [0.9290 0.6940 0.1250];
ylabel('Time (ms)');
title('Average Swing Time For Each Paw');

%Merge stance and swing bar graphs
c = categorical({'Left Forelimb','Right Forelimb','Right Hindlimb','Left Hindlimb'});
combo = [lfairtime lfgndtime; rfairtime rfgndtime; rhairtime rhgndtime; lhairtime lhgndtime];
tiledlayout(4,1);
bar(c,combo);
ylabel('Time (ms)');
title('Average Stance and Swing Time For Each Paw');
legend('Swingtime','Stancetime');
