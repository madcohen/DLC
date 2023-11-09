function [fig]=plotLFPaveS3(v1,v2,animalID)
    fig = figure;
    %Plot all trials in grey
    subplot(2,1,1);
    plot(v1,'color',[0.55 0.55 0.55]);
    hold on
    plot((sum(v1'))/10,'r');
    prefix=[animalID, ' Average LFP Stim 3 Position 1'];
    title(prefix);
    xlabel('Time (ms)');
    ylabel('Voltage');
    xlim([0 15000]);
    ylim([-0.4 0.4]);
    xline(5000,'r');
    xline(5100,'r');
    xline(5200,'r');
    xline(5300,'r');
    xline(5400,'r');
    xline(5500,'r');
    xline(5600,'r');
    xline(5700,'r');
    xline(5800,'r');
    xline(5900,'r'); %1 sec
    xline(6000,'r');
    xline(6100,'r');
    xline(6200,'r');
    xline(6300,'r');
    xline(6400,'r');
    xline(6500,'r');
    xline(6600,'r');
    xline(6700,'r');
    xline(6800,'r');
    xline(6900,'r'); %2 sec
    xline(7000,'r');
    xline(7100,'r');
    xline(7200,'r');
    xline(7300,'r');
    xline(7400,'r');
    xline(7500,'r');
    xline(7600,'r');
    xline(7700,'r');
    xline(7800,'r');
    xline(7900,'r'); %3 sec
    xline(8000,'r');
    xline(8100,'r');
    xline(8200,'r');
    xline(8300,'r');
    xline(8400,'r');
    xline(8500,'r');
    xline(8600,'r');
    xline(8700,'r');
    xline(8800,'r');
    xline(8900,'r'); %4 sec
    xline(9000,'r');
    xline(9100,'r');
    xline(9200,'r');
    xline(9300,'r');
    xline(9400,'r');
    xline(9500,'r');
    xline(9600,'r');
    xline(9700,'r');
    xline(9800,'r');
    xline(9900,'r');
    xline(10000,'r');
    hold off
    
    subplot(2,1,2);
    %Plot all trials in grey
    plot(v2,'color',[0.55 0.55 0.55]);
    hold on
    plot((sum(v2'))/10,'r');
    prefix=[animalID, ' Average LFP Stim 3 Position 2'];
    title(prefix);
    xlabel('Time (ms)');
    ylabel('Voltage');
    xlim([0 15000]);
    ylim([-0.4 0.4]);
    xline(5000,'r');
    xline(5100,'r');
    xline(5200,'r');
    xline(5300,'r');
    xline(5400,'r');
    xline(5500,'r');
    xline(5600,'r');
    xline(5700,'r');
    xline(5800,'r');
    xline(5900,'r'); %1 sec
    xline(6000,'r');
    xline(6100,'r');
    xline(6200,'r');
    xline(6300,'r');
    xline(6400,'r');
    xline(6500,'r');
    xline(6600,'r');
    xline(6700,'r');
    xline(6800,'r');
    xline(6900,'r'); %2 sec
    xline(7000,'r');
    xline(7100,'r');
    xline(7200,'r');
    xline(7300,'r');
    xline(7400,'r');
    xline(7500,'r');
    xline(7600,'r');
    xline(7700,'r');
    xline(7800,'r');
    xline(7900,'r'); %3 sec
    xline(8000,'r');
    xline(8100,'r');
    xline(8200,'r');
    xline(8300,'r');
    xline(8400,'r');
    xline(8500,'r');
    xline(8600,'r');
    xline(8700,'r');
    xline(8800,'r');
    xline(8900,'r'); %4 sec
    xline(9000,'r');
    xline(9100,'r');
    xline(9200,'r');
    xline(9300,'r');
    xline(9400,'r');
    xline(9500,'r');
    xline(9600,'r');
    xline(9700,'r');
    xline(9800,'r');
    xline(9900,'r');
    xline(10000,'r');
    hold off
end