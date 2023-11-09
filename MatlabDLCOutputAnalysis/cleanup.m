function cleanup(framems,rfx,rfy,lfx,lfy,rhx,rhy,lhx,lhy)
%Clean the Data and fill outliers
%Right Forelimb Y
figure
subplot(3,1,1);
% Fill outliers
[cleanedDatarfy,outlierIndicesrfy,thresholdLow3,thresholdHigh3] = filloutliers(rfy,...
    'nearest','movmedian',110,'ThresholdFactor',1.75,'SamplePoints',framems);

% Display results
%clf
plot(framems,rfy,'Color',[145 145 145]/255,'DisplayName','Raw Data RFY')
hold on
plot(framems,cleanedDatarfy,'Color',[0 0.4470 0.7410],'LineWidth',1,...
    'DisplayName','Cleaned data RFY')

% Plot outliers
plot(framems(outlierIndicesrfy),rfy(outlierIndicesrfy),'x','Color',[64 64 64]/255,...
    'DisplayName','Outliers')
title(['Number of outliers RFY: ' num2str(nnz(outlierIndicesrfy))])

% Plot filled outliers
plot(framems(outlierIndicesrfy),cleanedDatarfy(outlierIndicesrfy),'.','MarkerSize',12,...
    'Color',[217 83 25]/255,'DisplayName','Filled outliers')

% Plot outlier thresholds
plot([framems(:); missing; framems(:)],...
    [thresholdHigh3(:); missing; thresholdLow3(:)],'Color',[145 145 145]/255,...
    'DisplayName','Outlier thresholds')

hold off
legend('Location',"bestoutside")
clear outlierIndices3 thresholdLow3 thresholdHigh3

%Right Forelimb X
% Fill outliers
subplot(3,1,2);
[cleanedDatarfx,outlierIndicesrfx,thresholdLow4,thresholdHigh4] = filloutliers(rfx,...
    'nearest','movmedian',110,'ThresholdFactor',1.75,'SamplePoints',framems);

% Display results
%clf
plot(framems,rfx,'Color',[145 145 145]/255,'DisplayName','Raw Data RFX')
hold on
plot(framems,cleanedDatarfx,'Color',[0 0.4470 0.7410],'LineWidth',1,...
    'DisplayName','Cleaned data')

% Plot outliers
plot(framems(outlierIndicesrfx),rfx(outlierIndicesrfx),'x','Color',[64 64 64]/255,...
    'DisplayName','Outliers')
title(['Number of outliers RFX: ' num2str(nnz(outlierIndicesrfx))])

% Plot filled outliers
plot(framems(outlierIndicesrfx),cleanedDatarfx(outlierIndicesrfx),'.','MarkerSize',12,...
    'Color',[217 83 25]/255,'DisplayName','Filled outliers')

% Plot outlier thresholds
plot([framems(:); missing; framems(:)],...
    [thresholdHigh4(:); missing; thresholdLow4(:)],'Color',[145 145 145]/255,...
    'DisplayName','Outlier thresholds')

hold off
legend('Location',"bestoutside")
clear outlierIndices3 thresholdLow4 thresholdHigh4

%Scatterplot of cleaned data
subplot(3,1,3);
scatter(cleanedDatarfx,cleanedDatarfy,[],[0 0.4470 0.7410]);
xlabel('X Position in Pixels');
ylabel('Y Position in Pixels');
set(gca,'YDir','reverse');
title('Right Forelimb CLeaned Data')
ylim([200 400]);

%Left Forelimb X
figure
subplot(3,1,1);
% Fill outliers
[cleanedDatalfx,outlierIndiceslfx,thresholdLow5,thresholdHigh5] = filloutliers(lfx,...
    'nearest','movmedian',13,'ThresholdFactor',1.75);

% Display results
%clf
plot(framems,lfx,'Color',[145 145 145]/255,'DisplayName','Raw Data LFX')
hold on
plot(framems,cleanedDatalfx,'Color',[0.4660 0.6740 0.1880],'LineWidth',1,...
    'DisplayName','Cleaned data LFX')

% Plot outliers
plot(framems(outlierIndiceslfx),lfx(outlierIndiceslfx),'x','Color',[64 64 64]/255,...
    'DisplayName','Outliers')
title(['Number of outliers LFX: ' num2str(nnz(outlierIndiceslfx))])

% Plot filled outliers
plot(framems(outlierIndiceslfx),cleanedDatalfx(outlierIndiceslfx),'.','MarkerSize',12,...
    'Color',[217 83 25]/255,'DisplayName','Filled outliers')

% Plot outlier thresholds
plot([framems(:); missing; framems(:)],...
    [thresholdHigh5(:); missing; thresholdLow5(:)],'Color',[145 145 145]/255,...
    'DisplayName','Outlier thresholds')

hold off
legend('Location',"bestoutside")
clear outlierIndices3 thresholdLow5 thresholdHigh5

%Left Forelimb Y
% Fill outliers
subplot(3,1,2);
[cleanedDatalfy,outlierIndiceslfy,thresholdLow2,thresholdHigh2] = filloutliers(lfy,...
    'nearest','movmedian',19,'ThresholdFactor',1.75);

% Display results
%clf
plot(framems,lfy,'Color',[145 145 145]/255,'DisplayName','Input data')
hold on
plot(framems,cleanedDatalfy,'Color',[0.4660 0.6740 0.1880],'LineWidth',1,...
    'DisplayName','Cleaned data LFY')

% Plot outliers
plot(framems(outlierIndiceslfy),lfy(outlierIndiceslfy),'x','Color',[64 64 64]/255,...
    'DisplayName','Outliers')
title(['Number of outliers LFY: ' num2str(nnz(outlierIndiceslfy))])

% Plot filled outliers
plot(framems(outlierIndiceslfy),cleanedDatalfy(outlierIndiceslfy),'.','MarkerSize',12,...
    'Color',[217 83 25]/255,'DisplayName','Filled outliers')

% Plot outlier thresholds
plot([framems(:); missing; framems(:)],...
    [thresholdHigh2(:); missing; thresholdLow2(:)],'Color',[145 145 145]/255,...
    'DisplayName','Outlier thresholds')

hold off
legend('Location',"bestoutside")
clear outlierIndices2 thresholdLow2 thresholdHigh2

%New Scatterplot with cleaned data
subplot(3,1,3);
scatter(cleanedDatalfx,cleanedDatalfy,[],[0.4660 0.6740 0.1880]);
xlabel('X Position in Pixels');
ylabel('Y Position in Pixels');
set(gca,'YDir','reverse');
ylim([200 400])

%Right Hindlimb X
% Fill outliers
figure
subplot(3,1,1);
%[cleanedDatarhx,outlierIndicesrhx,thresholdLow6,thresholdHigh6] = filloutliers(rhx,...
  %  'nearest','movmedian',210,'ThresholdFactor',1.75,'SamplePoints',framems);
[cleanedDatarhx,outlierIndicesrhx,thresholdLow6,thresholdHigh6] = filloutliers(rhx,...
    'nearest','movmedian',110,'ThresholdFactor',1.75,'SamplePoints',framems);
% Display results
%clf
plot(framems,rhx,'Color',[145 145 145]/255,'DisplayName','Raw Data RHX')
hold on
plot(framems,cleanedDatarhx,'Color',[0.9290 0.6940 0.1250],'LineWidth',1,...
    'DisplayName','Cleaned data RHX')

% Plot outliers
plot(framems(outlierIndicesrhx),rhx(outlierIndicesrhx),'x','Color',[64 64 64]/255,...
    'DisplayName','Outliers')
title(['Number of outliers RHX: ' num2str(nnz(outlierIndicesrhx))])

% Plot filled outliers
plot(framems(outlierIndicesrhx),cleanedDatarhx(outlierIndicesrhx),'.','MarkerSize',12,...
    'Color',[217 83 25]/255,'DisplayName','Filled outliers')

%Plot outlier thresholds
plot([framems(:); missing; framems(:)],...
    [thresholdHigh6(:); missing; thresholdLow6(:)],'Color',[145 145 145]/255,...
    'DisplayName','Outlier thresholds')

hold off
legend('Location',"bestoutside")
clear outlierIndices2 thresholdLow6 thresholdHigh6

%Right HIndlimb Y
% Fill outliers
subplot(3,1,2);
%[cleanedDatarhy,outlierIndicesrhy,thresholdLow7,thresholdHigh7] = filloutliers(rhy,...
 %   'nearest','movmedian',10,'ThresholdFactor',1.75);
[cleanedDatarhy,outlierIndicesrhy,thresholdLow7,thresholdHigh7] = filloutliers(rhy,...
    'nearest','movmedian',10,'ThresholdFactor',1.75);

% Display results
%clf
plot(framems,rhy,'Color',[145 145 145]/255,'DisplayName','Raw Data RHY')
hold on
plot(framems,cleanedDatarhy,'Color',[0.9290 0.6940 0.1250],'LineWidth',1,...
    'DisplayName','Cleaned data RHY')

% Plot outliers
plot(framems(outlierIndicesrhy),rhy(outlierIndicesrhy),'x','Color',[64 64 64]/255,...
    'DisplayName','Outliers')
title(['Number of outliers RHY: ' num2str(nnz(outlierIndicesrhy))])

% Plot filled outliers
plot(framems(outlierIndicesrhy),cleanedDatarhy(outlierIndicesrhy),'.','MarkerSize',12,...
    'Color',[217 83 25]/255,'DisplayName','Filled outliers')

% Plot outlier thresholds
plot([framems(:); missing; framems(:)],...
    [thresholdHigh7(:); missing; thresholdLow7(:)],'Color',[145 145 145]/255,...
    'DisplayName','Outlier thresholds')

hold off
legend('Location',"bestoutside")
clear outlierIndices2 thresholdLow7 thresholdHigh7

%New scatterplot with cleaned data
subplot(3,1,3);
scatter(cleanedDatarhx,cleanedDatarhy,[],[0.9290 0.6940 0.1250]);
xlabel('X Position in Pixels');
ylabel('Y Position in Pixels');
set(gca,'YDir','reverse');
title('Cleaned Data Right Hindlimb')
ylim([200 400]);

%Left Hindlimb X
% Fill outliers
figure
subplot(3,1,1);
%[cleanedDatalhx,outlierIndiceslhx,thresholdLow8,thresholdHigh8] = filloutliers(lhx,...
 %   'nearest','movmedian',12,'ThresholdFactor',1.75);
[cleanedDatalhx,outlierIndiceslhx,thresholdLow8,thresholdHigh8] = filloutliers(lhx,...
    'nearest','movmedian',110,'ThresholdFactor',1.75);

% Display results
%clf
plot(framems,lhx,'Color',[145 145 145]/255,'DisplayName','Raw Data LHX')
hold on
plot(framems,cleanedDatalhx,'Color',[0.8500 0.3250 0.0980],'LineWidth',1,...
    'DisplayName','Cleaned data LHX')

% Plot outliers
plot(framems(outlierIndiceslhx),lhx(outlierIndiceslhx),'x','Color',[64 64 64]/255,...
    'DisplayName','Outliers')
title(['Number of outliers LHX: ' num2str(nnz(outlierIndiceslhx))])

% Plot filled outliers
plot(framems(outlierIndiceslhx),cleanedDatalhx(outlierIndiceslhx),'.','MarkerSize',12,...
    'Color',[109 185 226]/255,'DisplayName','Filled outliers')

% Plot outlier thresholds
plot([framems(:); missing; framems(:)],...
    [thresholdHigh8(:); missing; thresholdLow8(:)],'Color',[145 145 145]/255,...
    'DisplayName','Outlier thresholds')

hold off
legend('Location',"bestoutside")
clear outlierIndices2 thresholdLow8 thresholdHigh8

%Left HIndlimb Y
% Fill outliers
subplot(3,1,2);
%[cleanedDatalhy,outlierIndiceslhy,thresholdLow9,thresholdHigh9] = filloutliers(lhy,...
 %   'nearest','movmedian',9,'ThresholdFactor',1.75);
[cleanedDatalhy,outlierIndiceslhy,thresholdLow9,thresholdHigh9] = filloutliers(lhy,...
    'nearest','movmedian',10,'ThresholdFactor',2);

% Display results
%clf
plot(framems,lhy,'Color',[145 145 145]/255,'DisplayName','Raw Data LHY')
hold on
plot(framems,cleanedDatalhy,'Color',[0.8500 0.3250 0.0980],'LineWidth',1,...
    'DisplayName','Cleaned data LHY')

% Plot outliers
plot(framems(outlierIndiceslhy),lhy(outlierIndiceslhy),'x','Color',[64 64 64]/255,...
    'DisplayName','Outliers')
title(['Number of outliers LHY: ' num2str(nnz(outlierIndiceslhy))])

% Plot filled outliers
plot(framems(outlierIndiceslhy),cleanedDatalhy(outlierIndiceslhy),'.','MarkerSize',12,...
    'Color',[109 185 226]/255,'DisplayName','Filled outliers')

% Plot outlier thresholds
plot([framems(:); missing; framems(:)],...
    [thresholdHigh9(:); missing; thresholdLow9(:)],'Color',[145 145 145]/255,...
    'DisplayName','Outlier thresholds')

hold off
legend('Location',"bestoutside")
clear outlierIndices2 thresholdLow9 thresholdHigh9

%Scattterplot of cleaned data
subplot(3,1,3);
scatter(cleanedDatalhx,cleanedDatalhy,[],[0.8500 0.3250 0.0980]);
xlabel('X Position in Pixels');
ylabel('Y Position in Pixels');
set(gca,'YDir','reverse');
title('Cleaned Data Left Hindlimb')
ylim([200 500]);

%Scatterplot of all the limbs with cleaned data
%Plot the trajectory of the limbs
figure
subplot(2,2,[1,2]);
hold on
scatter(cleanedDatarfx,cleanedDatarfy,[],[0 0.4470 0.7410]);
scatter(cleanedDatalhx,cleanedDatalhy,[],[0.8500 0.3250 0.0980]);
scatter(cleanedDatarhx,cleanedDatarhy,[],[0.9290 0.6940 0.1250]);
scatter(cleanedDatalfx,cleanedDatalfy,[],[0.4660 0.6740 0.1880]);
title('All Limbs Trajectory (Cleaned Data)');
legend({'Right Forelimb','Left Hindlimb','Right Hindlimb','Left Forelimb'},'Location','northeastoutside');

xlabel('X Position in Pixels');
ylabel('Y Position in Pixels');
set(gca,'YDir','reverse');
ylim([100 500]);
xlim([0 1200]);
hold off

%Plot the raw data below the cleaned data
subplot(2,2,[3,4]);
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
ylim([100 500]);
xlim([0 1200]);
hold off


