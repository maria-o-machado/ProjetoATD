function graficos(nome, data, fig, matriz_atividade)
    acc_x = data(:,1);
    acc_y = data(:,2);
    acc_z = data(:,3);
    syms t
    
    t=0:7/(numel(acc_x)-1):7;
    
    figure(fig);
    subplot(3,1,1);
    hold on
    anterior=t(1,1);
    minimo = min(acc_x);
    maximo = max(acc_x);
    for i=1:length(matriz_atividade)
        atividade = matriz_atividade(i,1);   %SABER A ATIVIDADE ASSOCIADA E POR COMO LEGENDA
        tipo=typeLabels(atividade);
        inicio=matriz_atividade(i,2);        %SABER O INICIO DA ATIVIDADE
        fim=matriz_atividade(i,3);           %SABER O FIM DA ATIVIDADE
        if inicio~=anterior+1                %COLOCAR OS INTERVALOS NAO DEFINIDOS NO SINAL NO PLOT A PRETO
            atividade_acc_x=acc_x(anterior+1:(inicio-1),:); 
            t_atividade=t(1,anterior+1:(inicio-1)); 
            plot(t_atividade, atividade_acc_x, 'k');
        end
        atividade_acc_x=acc_x(inicio:fim,:); %SELECIONAR A ATIVIDADE NO SINAL
       
        %Ponto4.1
        %discrete_fourier_transform=ponto4_1(atividade_acc_x);
        
        %Ponto4.2
        if (tipo == "W") || (tipo == "W-U") || (tipo == "W-D")
            %maximo=ponto4_2(discrete_fourier_transform);
            
%             x=sprintf('Atividade %s -> Numero medio de passos: %d', tipo, maximo)
%             disp(x)
        end
        
        t_atividade=t(1,inicio:fim);         %SELECIONAR O INTERVALO DE t CORRESPONDENTE
        if mod(i,2)~=0
            text(t(1,inicio),minimo+0.05,tipo,'Color','k','FontSize',7);
        else
            text(t(1,inicio),maximo-0.1,tipo,'Color','k','FontSize',7);
        end
        plot(t_atividade, atividade_acc_x);
        anterior=fim;
    end
    if t(1,length(t))~=fim                   %VERIFICAR SE O FIM DO SINAL JA ESTA DEFINIDO NO PLOT CASO CONTARIO COLOCA A PRETO 
        atividade_acc_x=acc_x(fim+1:length(t),:);
        t_atividade=t(1,fim+1:length(t)); 
        plot(t_atividade, atividade_acc_x, 'k');
    end
    hold off
    ylabel('ACC X');
    xlabel('Time (min)');
    title(nome);
    
    subplot(3,1,2);
    hold on
    anterior=t(1,1);
    minimo = min(acc_y);
    maximo = max(acc_y);
    for i=1:length(matriz_atividade)
        atividade = matriz_atividade(i,1);   %SABER A ATIVIDADE ASSOCIADA E POR COMO LEGENDA
        tipo=typeLabels(atividade);
        inicio=matriz_atividade(i,2);        %SABER O INICIO DA ATIVIDADE
        fim=matriz_atividade(i,3);           %SABER O FIM DA ATIVIDADE
        if inicio~=anterior+1                %COLOCAR OS INTERVALOS NAO DEFINIDOS NO SINAL NO PLOT A PRETO
            atividade_acc_y=acc_y(anterior+1:(inicio-1),:);
            t_atividade=t(1,anterior+1:(inicio-1)); 
            plot(t_atividade, atividade_acc_y, 'k');
        end
        atividade_acc_y=acc_y(inicio:fim,:); %SELECIONAR A ATIVIDADE NO SINAL
        
        %Ponto4.1
        discrete_fourier_transform=ponto4_1(atividade_acc_y);
        x=sprintf('Inicio: %d', inicio)
        disp(x)
        %Ponto4.2
        if (tipo == "W") || (tipo == "W-U") || (tipo == "W-D")
            maximo=ponto4_2(discrete_fourier_transform);
%             for i=inicio:fim
%                 if discrete_fourier_transform(i)==maximo
%                    tempo=sprintf('Encontramos o tempo(s): %d', acc_y(i))
%                    disp(tempo)
%                 end   
%             end
        end
               
%         x=sprintf('Atividade %s -> Numero medio de passos: %d', tipo, maximo)
%         disp(x)
       
        t_atividade=t(1,inicio:fim);         %SELECIONAR O INTERVALO DE t CORRESPONDENTE
        if mod(i,2)~=0
            text(t(1,inicio),minimo+0.05,tipo,'Color','k','FontSize',7);
        else
            text(t(1,inicio),maximo-0.1,tipo,'Color','k','FontSize',7);
        end
        plot(t_atividade, atividade_acc_y);
        anterior=fim;
    end
    if t(1,length(t))~=fim                   %VERIFICAR SE O FIM DO SINAL JA ESTA DEFINIDO NO PLOT CASO CONTARIO COLOCA A PRETO 
        atividade_acc_y=acc_y(fim+1:length(t),:);
        t_atividade=t(1,fim+1:length(t)); 
        plot(t_atividade, atividade_acc_y, 'k');
    end
    hold off
    ylabel('ACC Y');
    xlabel('Time (min)');
 

    subplot(3,1,3);
    hold on
    anterior=t(1,1);
    minimo = min(acc_z);
    maximo = max(acc_z);
    for i=1:length(matriz_atividade)
        atividade = matriz_atividade(i,1);   %SABER A ATIVIDADE ASSOCIADA E POR COMO LEGENDA
        tipo=typeLabels(atividade);
        inicio=matriz_atividade(i,2);        %SABER O INICIO DA ATIVIDADE
        fim=matriz_atividade(i,3);           %SABER O FIM DA ATIVIDADE
        if inicio~=anterior+1                %COLOCAR OS INTERVALOS NAO DEFINIDOS NO SINAL NO PLOT A PRETO             
            atividade_acc_z=acc_z(anterior+1:(inicio-1),:);
            t_atividade=t(1,anterior+1:(inicio-1)); 
            plot(t_atividade, atividade_acc_z, 'k');
        end
        atividade_acc_z=acc_z(inicio:fim,:); %SELECIONAR A ATIVIDADE NO SINAL
        
        %Ponto4.1
        discrete_fourier_transform=ponto4_1(atividade_acc_z);
        
        %Ponto4.2
        if (tipo == "W") || (tipo == "W-U") || (tipo == "W-D")
            maximo=ponto4_2(abs(discrete_fourier_transform));
            frequencia=find(abs(discrete_fourier_transform)==maximo);
            f=linspace(-25,25,numel(atividade_acc_z));
            x=sprintf('Atividade %s -> Numero medio de passos: %d /min', tipo, f(frequencia)*60) %maximo -> frequencia
            disp(x)
        end
        
        t_atividade=t(1,inicio:fim);         %SELECIONAR O INTERVALO DE t CORRESPONDENTE
        if mod(i,2)~=0
            text(t(1,inicio),minimo+0.05,tipo,'Color','k','FontSize',7);
        else
            text(t(1,inicio),maximo-0.1,tipo,'Color','k','FontSize',7);
        end
        plot(t_atividade, atividade_acc_z);
        anterior=fim;
    end
    if t(1,length(t))~=fim                   %VERIFICAR SE O FIM DO SINAL JA ESTA DEFINIDO NO PLOT CASO CONTARIO COLOCA A PRETO 
        atividade_acc_z=acc_z(fim+1:length(t),:);
        t_atividade=t(1,fim+1:length(t)); 
        plot(t_atividade, atividade_acc_z, 'k');
    end
    hold off
    ylabel('ACC Z');
    xlabel('Time (min)');