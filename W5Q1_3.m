% alpha = 2
duration = 10;          
Fs = 100;               
t = 0:1/Fs:duration;    
F_start = 6;            
F_end = 15;             

F = linspace(F_start, F_end, length(t));
x = sin(2*pi*cumsum(F)/Fs);

window_length = 100;   
overlap_length = 10;   
nfft = 1024;         

figure;
spectrogram(x, hamming(window_length), overlap_length, nfft, Fs, 'yaxis');
title('Spectrogram of Chirp Signal');
