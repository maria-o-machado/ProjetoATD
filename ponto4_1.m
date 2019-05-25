function discrete_fourier_transform=ponto4_1(atividade, fig, texto)
%ANALISE: ver a janela que tem menos rifle effect (oscilação)
%Tentar perceber valores de frequencia maxima (pico) e o que acontece ao riffle effect com o aumento das frequencias 
%Basicamente tentar perceber as mudanças dos valores ao aplicar janelas diferetnes

%     figure(fig);
% 
%     discrete_fourier_transform=dFT(detrend(atividade).*hamming(numel(atividade)));
%     f=linspace(-25,25,numel(atividade));
%     plot(f,abs(discrete_fourier_transform));
%     x=sprintf('Janela de Hamming %s', texto);
%     title(x);
% 
%     figure(fig+1);
%      discrete_fourier_transform=dFT(atividade.*hann(numel(atividade)));
%      plot(f,abs(discrete_fourier_transform));
%      x=sprintf('Janela de Hann %s', texto);
%      title(x);
%  
%     figure(fig+2);
%      discrete_fourier_transform=dFT(atividade.*blackman(numel(atividade)));
%      plot(f,abs(discrete_fourier_transform));
%      x=sprintf('Janela de Blackman %s', texto);
%      title(x);
