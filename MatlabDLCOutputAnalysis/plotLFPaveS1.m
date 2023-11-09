function [fig]=plotLFPaveS1(v1,v2,animalID)
    fig = figure;
    %Plot all trials in grey
    subplot(2,1,1);
    plot(v1,'color',[0.55 0.55 0.55]);
    hold on
    plot((sum(v1'))/10,'r');
    prefix=[animalID, ' Average LFP Stim 1 Position 1'];
    title(prefix);
    xlabel('Time (ms)');
    ylabel('Voltage');
    xlim([0 15000]);
    ylim([-0.4 0.4]);
    xline(5000,'r');
    xline(5050,'r');
    hold off
    
    subplot(2,1,2);
    %Plot all trials in grey
    plot(v2,'color',[0.55 0.55 0.55]);
    hold on
    plot((sum(v2'))/10,'r');
    prefix=[animalID, ' Average LFP Stim 1 Position 2'];
    title(prefix);
    xlabel('Time (ms)');
    ylabel('Voltage');
    xlim([0 15000]);
    ylim([-0.4 0.4]);
    xline(5000,'r');
    xline(5050,'r');
    hold off
end
    
    