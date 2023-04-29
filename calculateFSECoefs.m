function coefs = calculateFSECoefs(f, N, T0, t)
    dt = t(2)-t(1);
    f0 = 1/T0;
    coefs = zeros(1, 2*N+1);
    for k = -N:N
        ck = (1/T0)*trapz(f.*exp(-1j*2*pi*f0*k*t))*dt;
        coefs(k+N+1) = ck;
    end
end
