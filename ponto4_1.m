function discrete_fourier_transform=ponto4_1(atividade)
    discrete_fourier_transform=dFT(detrend(atividade).*hamming(numel(atividade)));
    f=linspace(-25,25,numel(atividade));
    plot(f,abs(discrete_fourier_transform))
    disp('')

    %discrete_fourier_transform=dFT(atividade.*hann(numel(atividade)));
    
    %discrete_fourier_transform=dFT(atividade.*blackman(numel(atividade)));

