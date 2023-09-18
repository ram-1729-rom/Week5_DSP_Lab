% alpha = 2
Fs = 100;               
T = 10;            
t = 0:1/Fs:T;          
F_start = 6;            
F_end = 15;             

F_t = linspace(F_start, F_end, length(t));

x = sin(2*pi*cumsum(F_t)/Fs);

N = length(x);
X = fft(x);
frequencies = (0:N-1) * Fs / N;

figure;
plot(frequencies, abs(X));
xlabel('Frequency (Hz)');
ylabel('Magnitude');
title('Frequency Spectrum of the Chirp Signal');
grid on;

[~, index] = max(abs(X));  
dominant_frequency = frequencies(index);  
disp(['Dominant Frequency Component: ' num2str(dominant_frequency) ' Hz']);
