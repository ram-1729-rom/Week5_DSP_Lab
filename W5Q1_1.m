% alpha = 2
duration = 10;          
Fs = 100;               
t = 0:1/Fs:duration;    
F_start = 6;            
F_end = 15;             

F = linspace(F_start, F_end, length(t)); 
x = sin(2*pi*cumsum(F) / Fs); 

figure;
plot(t, x);
xlabel('Time (s)');
ylabel('Amplitude');
title({'Chirp Signal:', 'sin(2\piF(t)t) with F(t) linearly increasing', 'from 6 Hz to 15 Hz'});
grid on;


