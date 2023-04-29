% Define the parameters
a = 1; % Amplitude
pD = 1; % Duration that the signal is positive in a single period
T = 2; % Period
ss = 0.01; % Step size of the time vector

% Generate and plot the square wave signal for different values of N
N_values = [5, 10, 20, 50];
for i = 1:length(N_values)
    N = N_values(i);
    [signal, time] = squareWaveCalculator(a, pD, T, ss, N);
    figure;
    plot(time, signal);
    xlabel('Time');
    ylabel('Signal');
    title(['Square Wave Signal (N=' num2str(N) ')']);
end
