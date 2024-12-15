% Compute the Fourier Transform of the accelX signal

% Define the sampling frequency (adjust as necessary)
fs = 1000; % Sampling frequency in Hz

% Extract the signal (assuming accelX is already in the workspace)
N = length(accelX); % Number of samples

% Perform the Fast Fourier Transform (FFT)
fftAccelX = fft(accelX);

% Compute the frequency vector
f = (0:N-1)*(fs/N); % Frequency axis in Hz

% Take the magnitude of the FFT
magnitudeFFT = abs(fftAccelX);

% Compute the autocorrelation of accelX
autocorrAccelX = xcorr(accelX, 'unbiased'); % Unbiased autocorrelation
lag = (-N+1:N-1); % Lag vector

% Compute the Power Spectral Density (PSD) of accelX
[psdAccelX, f_psd] = pwelch(accelX, hann(1024), 512, 1024, fs); % Using Welch's method

% Compute the auto-PSD of accelX using the autocorrelation method
autoPSD = abs(fft(autocorrAccelX)); % FFT of autocorrelation
f_autoPSD = (0:N-1)*(fs/N); % Frequency axis for auto-PSD

% Plot all analyses in a 2x2 grid
figure;

% Subplot for Fourier Transform
subplot(2, 2, 1);
plot(f(1:floor(N/2)), magnitudeFFT(1:floor(N/2)));
title('Fourier Transform of accelX');
xlabel('Frequency (Hz)');
ylabel('|Amplitude|');

% Subplot for Autocorrelation
subplot(2, 2, 2);
plot(lag, autocorrAccelX);
title('Autocorrelation of accelX');
xlabel('Lag');
ylabel('Autocorrelation');

% Subplot for Power Spectral Density
subplot(2, 2, 3);
plot(f_psd, 10*log10(psdAccelX));
title('Power Spectral Density of accelX');
xlabel('Frequency (Hz)');
ylabel('Power/Frequency (dB/Hz)');

% Subplot for Auto-PSD
subplot(2, 2, 4);
plot(f_autoPSD(1:floor(N/2)), autoPSD(1:floor(N/2)));
title('Auto-PSD of accelX');
xlabel('Frequency (Hz)');
ylabel('Power');
