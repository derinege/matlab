function [signal, time] = squareWaveCalculator(a, pD, T, ss, N)
    time = 0:ss:N*T;
    signal = zeros(1,length(time));
    for i = 1:length(time)
        if mod(time(i),T) < pD
            signal(i) = a;
        end
    end
end
