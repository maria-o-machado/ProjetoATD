function numero_medio_passos=ponto4_2(discrete_fourier_transform, atividade)
    %Ver se o numero medio de passos esta bem calculado
    %maximo=max(abs(discrete_fourier_transform));
    %--------------------------------------------
   f=linspace(-25,25,numel(atividade));
   ixp=find(f>=0);
   f=f(ixp);
  
    maximo=max(abs(discrete_fourier_transform(ixp)));
    %vetor_picos(vetor_picos > maximo*0.4);
    [vetor_picos,locs] = findpeaks(abs(discrete_fourier_transform(ixp)),'MinPeakHeight',maximo*0.4);
%     maximo=max(abs(discrete_fourier_transform));
%     vetor_picos(vetor_picos > maximo*0.4);
    %maxi = vetor_picos(1);
    %frequencia=find(abs(discrete_fourier_transform)==maxi);
    
    
    %plot(f,abs(discrete_fourier_transform(ixp)));
    %hold on
    %plot(f(locs),vetor_picos,'ro')
    frequencia=f(locs(1));
    numero_medio_passos = frequencia*60;
