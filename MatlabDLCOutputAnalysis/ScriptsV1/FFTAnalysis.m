%Pre stimulation 
x=mcclfp(1:50000);
L=length(x);
Fs = 10000;
xdft = fft(x);
Pxx = 1/(L*Fs)*abs(xdft(1:L/2+1)).^2;
freq = 0:Fs/L:Fs/2;
figure;
subplot(2,1,1);
plot(freq,10*log10(Pxx'))

axis([0 100 -20 50])
xlabel('Hz'); ylabel('dB/Hz');
title('Ataxia 3 Trial 19 Pre-stim');

%Post stimulation
x=mcclfp(50001:100000);
L=length(x);
Fs = 10000;
xdft = fft(x);
Pxx = 1/(L*Fs)*abs(xdft(1:L/2+1)).^2;
freq = 0:Fs/L:Fs/2;
subplot(2,1,2);
plot(freq,10*log10(Pxx'))

axis([0 100 -20 50])
xlabel('Hz'); ylabel('dB/Hz');
title('Ataxia 3 Trial 19 Post-stim');