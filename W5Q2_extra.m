% alpha = 2
duration = 10;          
Fs = 100;               
t = 0:1/Fs:duration;    
F_start = 6;            
F_end = 15;             

F = linspace(F_start, F_end, length(t));
x = sin(2*pi*cumsum(F)/Fs);

window_lengths = [100, 150, 200];
window_techniques = {'hanning', 'hamming', 'blackman'};

figure;

for i = 1:length(window_lengths)
    for j = 1:length(window_techniques)
        window_length = window_lengths(i); 
        window_type = window_techniques{j};
        
        subplot(length(window_lengths), length(window_techniques), (i - 1) * length(window_techniques) + j);
        
        spectrogram(x, window(window_type, window_length), window_length/2, window_length, Fs, 'yaxis');
        title(['Window: ' window_type ', Length: ' num2str(window_length)]);
    end
end
