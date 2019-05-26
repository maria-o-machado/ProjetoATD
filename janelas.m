function discrete_fourier_transform=janelas(atividade, fig, texto, tipo)
%ANALISE: ver a janela que tem menos rifle effect (oscilação)
%Tentar perceber valores de frequencia maxima (pico) e o que acontece ao riffle effect com o aumento das frequencias 
%Basicamente tentar perceber as mudanças dos valores ao aplicar janelas diferetnes

    f=linspace(-25,25,numel(atividade));
    ixp=find(f>=0);
    f=f(ixp);
    discrete_fourier_transform=dFT(detrend(atividade).*hamming(numel(atividade)));
    dft = dFT(atividade);
    
    figure(fig);
    
    subplot(2,2,1)
    plot(f,abs(dft(ixp)));
    x=sprintf('[%s] DFT %s', tipo, texto);
    title(x);
    
    subplot(2,2,2)
    plot(f,abs(discrete_fourier_transform(ixp)));
    x=sprintf('[%s]Janela de Hamming %s', tipo, texto);
    title(x);

    subplot(2,2,3)
    discrete_fourier_transform=dFT(atividade.*hann(numel(atividade)));
    plot(f,abs(discrete_fourier_transform(ixp)));
    x=sprintf('[%s] Janela de Hann %s', tipo, texto);
    title(x);

    subplot(2,2,4)
    discrete_fourier_transform=dFT(atividade.*blackman(numel(atividade)));
    plot(f,abs(discrete_fourier_transform(ixp)));
    x=sprintf('[%s] Janela de Blackman %s', tipo, texto);
    title(x);
