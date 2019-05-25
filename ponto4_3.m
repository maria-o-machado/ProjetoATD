function [picoMaximo, primeiroPico, ultimoPico] = ponto4_3(atividade)

    f=linspace(-25,25,numel(atividade));
    ixp=find(f>=0);
    f=f(ixp);
  
    maximo=max(abs(atividade(ixp)));
    [vetor_picos,locs] = findpeaks(abs(atividade(ixp)),'MinPeakHeight',maximo*0.4);
    
    %Pico Máximo
    picoMaximo = max(vetor_picos);
    %Primeiro pico
    primeiroPico = f(locs(1));
    %Ultimo pico
    ultimoPico = f(locs(numel(vetor_picos)));