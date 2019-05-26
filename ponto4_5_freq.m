function [numero_passos_w, numero_passos_wu, numero_passos_wd]=ponto4_5_freq(data, matriz_atividade)

    numero_passos_w=[];
    numero_passos_wu=[];
    numero_passos_wd=[];
    
        
    t=0:7/(numel(data)-1):7;
    
    anterior=t(1,1);
    minimo = min(data);
    maximo = max(data);
    
    num_atividades_dinamicas=0;
    num_atividades_transicao=0;
    num_atividades_estaticas=0;
    
    %SABER O NUMERO DE ATIVIDADES DINAMICAS
    for i=1:length(matriz_atividade)
        atividade = matriz_atividade(i,1);   %SABER A ATIVIDADE ASSOCIADA E POR COMO LEGENDA
        tipo=typeLabels(atividade);
        if (tipo == "W") || (tipo == "W-U") || (tipo == "W-D")
            num_atividades_dinamicas=num_atividades_dinamicas+1;
        elseif (tipo == "SIT") || (tipo == "STAND") || (tipo == "LAY")
            num_atividades_estaticas=num_atividades_estaticas+1;
           
        else
            num_atividades_transicao=num_atividades_transicao+1;
        end
    end
%========================================================================
    A=[num_atividades_dinamicas, num_atividades_dinamicas, num_atividades_dinamicas];
    maior=max(A);
        
    %Analise
    
    hold on
    
    for i=1:length(matriz_atividade)
        atividade = matriz_atividade(i,1);   %SABER A ATIVIDADE ASSOCIADA E POR COMO LEGENDA
        tipo=typeLabels(atividade);
        inicio=matriz_atividade(i,2);        %SABER O INICIO DA ATIVIDADE
        fim=matriz_atividade(i,3);           %SABER O FIM DA ATIVIDADE
        if inicio~=anterior+1                %COLOCAR OS INTERVALOS NAO DEFINIDOS NO SINAL NO PLOT A PRETO
            atividade_acc=data(anterior+1:(inicio-1),:);
            t_atividade=t(1,anterior+1:(inicio-1));   
        end
        atividade_acc=data(inicio:fim,:);
        
% ===================================================================
       discrete_fourier_transform = dFT(atividade_acc);
       
       if (tipo == "W")
            numero_medio_passos=ponto4_2(discrete_fourier_transform, atividade_acc);
            numero_passos_w=[numero_passos_w numero_medio_passos]; 
        end       
       
        if (tipo == "W-U")
            numero_medio_passos=ponto4_2(discrete_fourier_transform, atividade_acc);
            numero_passos_wu=[numero_passos_wu numero_medio_passos];   
        end
        
        if (tipo == "W-D")
            numero_medio_passos=ponto4_2(discrete_fourier_transform, atividade_acc);
            numero_passos_wd=[numero_passos_wd numero_medio_passos]; 
        end
             
    % ======================================================================

         anterior=fim;
         
    end
    hold off
    

    