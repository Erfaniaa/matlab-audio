[y, fs] = audioread('audio.wav');

player = audioplayer(y, fs);
play(player);

subplot(3, 1, 1);
range = (0 : length(y) - 1) * (fs / length(y));
fft_y = abs(fftshift(fft(y, length(y)) / length(y)));
plot(range, fft_y);
xlabel('Frequency');
ylabel('Absolute Value');

subplot(3, 1, 2);
y = y(: , 1);
dt = 1 / fs;
t = 0: dt: (length(y) * dt) - dt;
plot(t, y);
xlabel('Seconds');
ylabel('Amplitude');

%subplot(3, 1, 3);
%plot(psd(spectrum.periodogram,signal,'Fs',fs,'NFFT',length(signal)));
%xlabel('Spectrogram');