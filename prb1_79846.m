% Define the parameters
a = 8; % Amplitude
pD =  4% Duration that the signal is positive in a single period
T = 6; % Period
ss = 0.01; % Step size of the time vector
N = 5; % Number of periods to be plotted

% Generate the square wave signal
[signal, time] = squareWaveCalculator(a, pD, T, ss, N);

% Plot the square wave signal
plot(time, signal);
xlabel('Time');
ylabel('Signal');
