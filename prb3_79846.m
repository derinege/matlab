% Define the parameters
a = 1; % Amplitude
pD = 1; % Duration that the signal is positive in a single period
T = 2; % Period
ss = 0.01; % Step size of the time vector
N = 1; % Number of periods to be plotted

% Generate the square wave signal
[signal, time] = squareWaveCalculator(a, pD, T, ss, N);

% Define the frequency vector
fAxis = -5:0.01:5;

% Calculate the CTFT of the signal
ctft = calculateCTFT(fAxis, signal, time);

% Plot the magnitude of the CTFT
plot(fAxis, abs(ctft));
xlabel('Frequency');
ylabel('Magnitude');
title('Plot 1')

