% Compute Frequency Response Functions (FRFs) for a 10x3 timetable named wrench

% Assume the timetable 'wrench' has columns: ReactionForceX, ReactionForceY, ReactionForceZ
% and AccelerationX, AccelerationY, AccelerationZ

% Extract reaction forces and accelerations from the timetable
forcesX = wrench.Force_X;
forcesY = wrench.Force_Y;
forcesZ = wrench.Force_Z;

accelX = Acc.Acceleration_X;
accelY = Acc.Acceleration_Y;
accelZ = Acc.Acceleration_Z;

% Define the sampling frequency (adjust as necessary)
fs = 1000; % Sampling frequency in Hz

% Compute the Power Spectral Densities (PSDs) and Frequency Response Function (FRF)
[PSDXF_X, fX] = cpsd(forcesX, accelX, hann(1024), 512, 1024, fs); % Cross-PSD for X-axis
[PSDXF_Y, fY] = cpsd(forcesY, accelY, hann(1024), 512, 1024, fs); % Cross-PSD for Y-axis
[PSDXF_Z, fZ] = cpsd(forcesZ, accelZ, hann(1024), 512, 1024, fs); % Cross-PSD for Z-axis

[PSDF_X, ~] = pwelch(forcesX, hann(1024), 512, 1024, fs); % Auto-PSD for X-axis
[PSDF_Y, ~] = pwelch(forcesY, hann(1024), 512, 1024, fs); % Auto-PSD for Y-axis
[PSDF_Z, ~] = pwelch(forcesZ, hann(1024), 512, 1024, fs); % Auto-PSD for Z-axis

% Calculate the FRFs for each axis
FRF_X = PSDXF_X ./ PSDF_X;
FRF_Y = PSDXF_Y ./ PSDF_Y;
FRF_Z = PSDXF_Z ./ PSDF_Z;

% Plot the FRF for each axis
figure;
subplot(3, 1, 1);
semilogy(fX, abs(FRF_X));
title('Frequency Response Function (X-axis)');
xlabel('Frequency (Hz)');
ylabel('|FRF|');

subplot(3, 1, 2);
semilogy(fY, abs(FRF_Y));
title('Frequency Response Function (Y-axis)');
xlabel('Frequency (Hz)');
ylabel('|FRF|');

subplot(3, 1, 3);
semilogy(fZ, abs(FRF_Z));
title('Frequency Response Function (Z-axis)');
xlabel('Frequency (Hz)');
ylabel('|FRF|');
