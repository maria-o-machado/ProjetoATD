function  discrete_fourier_transform = dFT(atividade)  
    discrete_fourier_transform = fftshift(fft(detrend(atividade)));
    f=linspace(-25,25,numel(atividade));
    %plot(f,abs(discrete_fourier_transform));