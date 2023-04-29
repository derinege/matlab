% Define the parameters
a = 1; % Amplitude
T = 2; % Period
ss = 0.01; % Step size of the time vector
N = 1; % Number of periods to be plotted

% Define the frequency vector
fAxis = -5:0.01:5;

% Generate and plot the CTFT of the square wave signal for different values of pD
pD_values = [0.2, 0.5, 1, 1.5];
for i = 1:length(pD_values)
    pD = pD_values(i);
    [signal, time] = squareWaveCalculator(a, pD, T, ss, N);
    ctft = calculateCTFT(fAxis, signal, time);
    plot(fAxis, abs(ctft));
    hold on;
end

xlabel('Frequency');
ylabel('Magnitude');
legend('pD=0.2', 'pD=0.5', 'pD=1', 'pD=1.5');
title('CTFT of Square Wave Signal for Different Values of pD');
