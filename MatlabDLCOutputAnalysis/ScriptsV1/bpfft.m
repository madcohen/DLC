function d = bpfft(v,rate,fo,f1)
% function d = bpfft(v,rate,fo,f1)
% Use column matrices (of the form 10000 by 8, not 8 by 10000)

% bandpass fft columns of matrix v.  v is sampled at rate (Hz)
% The pass band is fo < f < f1.
% mod. 1-19-92, B.R. to take col vectors instead of rows
% mod. 8-28-92 C.A. replaced "length" function with "size"
% mod. 4-11-93 C.A. fixed indexing error 

n = size(v,1);
ffo = round(fo * n / rate);
ff1 = round(f1 * n / rate);
fb = fft(v);
if fo == 0,
  ffo = -1;
end;
fb([1:ffo+1 ff1+1:n-ff1+1 n-ffo+1:n],:) = ...
     zeros(size(fb([1:ffo+1 ff1+1:n-ff1+1 n-ffo+1:n],:)));
d = real(ifft(fb));
