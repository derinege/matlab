function ctft = calculateCTFT(fAxis, signal, time)
    dt = time(2)-time(1);
    ctft = zeros(1,length(fAxis));
    for i = 1:length(fAxis)
        F = fAxis(i);
        X_F = trapz(signal.*exp(-1j*2*pi*F*time))*dt;
        ctft(i) = X_F;
    end
end
