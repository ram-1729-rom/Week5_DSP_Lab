Fs = 4000; 
duration = 1.5; 

recorder = audiorecorder(Fs, 16, 1); 
disp('Start speaking...');
recordblocking(recorder, duration);
disp('Recording finished.');

voice_data = getaudiodata(recorder);

audiowrite('My_name.wav', voice_data, Fs);

[y, Fs] = audioread('My_name.wav');


figure;
spectrogram(y, hamming(512), 256, [], Fs, 'yaxis');
title('Spectrogram of My Name Recording');
xlabel('Time (seconds)');
ylabel('Frequency (Hz)');
colorbar;