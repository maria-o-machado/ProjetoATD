function numero_medio_passos=ponto4_2(discrete_fourier_transform, atividade)
    %Ver se o numero medio de passos esta bem calculado
    maximo=max(abs(discrete_fourier_transform));
    frequencia=find(abs(discrete_fourier_transform)==maximo);
    f=linspace(-25,25,numel(atividade));
    numero_medio_passos = round(abs(f(frequencia))*60);
