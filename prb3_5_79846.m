pD = 1;
N_values = [5, 10, 20, 50];
fAxis = -5:0.01:5;

for i = 1:length(N_values)
    N = N_values(i);
    [s, t] = squareWaveCalculator(1, pD, 2, 0.01, N);
    ctft = calculateCTFT(fAxis, s, t);
    figure;
    plot(fAxis, abs(ctft));
    xlabel('Frequency (Hz)');
    ylabel('|S(f)|');
    title(['CTFT of s(t) for N = ' num2str(N)]);
end
