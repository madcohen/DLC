function [fig1,fig2]=plotLFPaveS1(v1,v2,animalID)
    fig1 = figure;
    %Plot all trials in grey
    plot(v1,'color',[0.55 0.55 0.55]);
    hold on
    plot((sum(v1'))/10,'r');
    prefix=[animalID, ' Average LFP Position 1'];
    title(prefix);
    xlabel('Time (ms)');
    ylabel('Voltage');
    xlim([0 15000]);
    ylim([-0.5 0.5]);
    hold off
    fig2 = figure;
    %Plot all trials in grey
    plot(v2,'color',[0.55 0.55 0.55]);
    hold on
    plot((sum(v2'))/10,'r');
    prefix=[animalID, ' Average LFP Position 2'];
    title(prefix);
    xlabel('Time (ms)');
    ylabel('Voltage');
    xlim([0 15000]);
    ylim([-0.5 0.5]);
    hold off
end
    
    