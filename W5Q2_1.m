% alpha = 2
[y, Fs] = audioread('Week 5 codes/instru2.wav');

figure;
spectrogram(y, hamming(512), 256, [], Fs, 'yaxis');
title('Spectrogram of instru2.wav');

N = length(y);
Y = fft(y);
Y_magnitude = abs(Y(1:N/2+1));

frequencies = (0:N/2) * Fs / N;
[~, idx] = max(Y_magnitude);
fundamental_frequency = frequencies(idx);

fprintf('Fundamental Pitch Frequency: %.2f Hz\n', fundamental_frequency);

figure;
plot(frequencies, Y_magnitude);
xlabel('Frequency (Hz)');
ylabel('Magnitude');
title('Spectrum of instru2.wav');
grid on;

%Fundamental Pitch Frequency = 2369.12 Hz