 mcclfp = bpfft(A3T19_041421,10000,1,100);
 plot(mcclfp,'b');
 vline(-2000, 2000, 49849, 'r');
 vline(-2000, 2000, 51631, 'r')
 title('Ataxia 3 Trial 19 LFP');
 
%Run this to use multiple filters and plot as subplots
mcclfp75 = bpfft(M8T44_041921,10000,1,75);
figure
subplot(2,1,1)
plot(mcclfp,'b'); %Filtered to 100
title('Filtererd to 100')
hold on
vline(-2000, 2000, 49849, 'r');
vline(-2000, 2000, 51631, 'r')
subplot(2,1,2);
plot(mcclfp75,'b'); %filtered to 75
title('Filtered to 75')
vline(-2000, 2000, 49849, 'r')
vline(-2000, 2000, 51631, 'r')
hold off