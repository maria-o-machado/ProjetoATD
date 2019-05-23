function discrete_fourier_transform=ponto4_1(atividade, fig)
%ANALISE: ver a janela que tem menos rifle effect (oscilação)
%Tentar perceber valores de frequencia maxima (pico) e o que acontece ao riffle effect com o aumento das frequencias 
%Basicamente tentar perceber as mudanças dos valores ao aplicar janelas diferetnes

    
    discrete_fourier_transform=dFT(detrend(atividade).*hamming(numel(atividade)));
    f=linspace(-25,25,numel(atividade));

%     discrete_fourier_transform=dFT(atividade.*hann(numel(atividade)));
%     plot(f,abs(discrete_fourier_transform));

%     discrete_fourier_transform=dFT(atividade.*blackman(numel(atividade)));
%     plot(f,abs(discrete_fourier_transform));
