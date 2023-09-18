% alpha = 2
[y, Fs] = audioread('Week 5 codes/Opera.wav');

figure;
spectrogram(y, hamming(512), 256, 512, Fs, 'yaxis');
title('Spectrogram of Opera.wav');
