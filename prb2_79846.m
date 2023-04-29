% Define the parameters
a = 8; % Amplitude
pD = 4; % Duration that the signal is positive in a single period
T = 6; % Period
ss = 0.01; % Step size of the time vector
N = 5; % Number of periods to be plotted

% Generate the square wave signal
[signal, time] = squareWaveCalculator(a, pD, T, ss, N);

% Calculate and plot the Fourier series expansion for different values of N
N_values = [3, 5, 10, 50];
for i = 1:length(N_values)
    N = N_values(i);
    coefs = calculateFSECoefs(signal(1:length(time)/N), N, T, time(1:length(time)/N));
    f0 = 1/T;
    FSE_signal = zeros(1,length(time));
    for k = -N:N
        FSE_signal = FSE_signal + coefs(k+N+1)*exp(1j*2*pi*f0*k*time);
    end
    
    figure;
    plot(time, signal);
    hold on;
    plot(time, FSE_signal);
    xlabel('Time');
    ylabel('Signal');
    legend('Original Signal', ['FSE Signal (N=' num2str(N) ')']);
end
