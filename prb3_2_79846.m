% Define the parameters
a = 1; % Amplitude
T = 2; % Period
ss = 0.01; % Step size of the time vector
N = 1; % Number of periods to be plotted

% Generate and plot the square wave signal for different values of pD
pD_values = [0.2, 0.5, 1, 1.5];
for i = 1:length(pD_values)
    pD = pD_values(i);
    [signal, time] = squareWaveCalculator(a, pD, T, ss, N);
    plot(time, signal);
    hold on;
end

xlabel('Time');
ylabel('Signal');
legend('pD=0.2', 'pD=0.5', 'pD=1', 'pD=1.5');
title("Square Wave Signal for Different Values of pD'")
