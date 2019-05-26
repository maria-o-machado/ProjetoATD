function [vetor_picosMax_W_X, vetor_picosMax_W_Y, vetor_picosMax_W_Z, vetor_picosMax_WU_X, vetor_picosMax_WU_Y, vetor_picosMax_WU_Z, vetor_picosMax_WD_X, vetor_picosMax_WD_Y, vetor_picosMax_WD_Z]=ponto4_5_max(nome, data, fig, matriz_atividade)
    
    %=========PICO MAXIMO=========
    vetor_picosMax_W_X = [];
    vetor_picosMax_W_Y = [];
    vetor_picosMax_W_Z = [];
    
    vetor_picosMax_WU_X = [];
    vetor_picosMax_WU_Y = [];
    vetor_picosMax_WU_Z = [];
    
    vetor_picosMax_WD_X = [];
    vetor_picosMax_WD_Y = [];
    vetor_picosMax_WD_Z = [];
    
    %===============================
    
    t=0:7/(numel(data)-1):7;
    
    anterior=t(1,1);
    minimo = min(data);
    maximo = max(data);
   
%========================================================================
        
    %Analise
    
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
        
% =============================== Ponto4 ===============================
        discrete_fourier_transform = dFT(atividade_acc);
       

% ============================== Ponto4.3 ==============================
        [picoMaximo, primeiroPico, ultimoPico] = calcPicos(discrete_fourier_transform);
        %Atividade Dinamica
        if (strcmp(nome,'acc-exp01-user01.txt ACC-X')==1)
             if (tipo == "W")
                 vetor_picosMax_W_X = [vetor_picosMax_W_X picoMaximo];
             elseif (tipo == "W-U")
                 vetor_picosMax_WU_X = [vetor_picosMax_WU_X picoMaximo];
             elseif (tipo == "W-D")
                 vetor_picosMax_WD_X = [vetor_picosMax_WD_X picoMaximo];
             end
            
        elseif (strcmp(nome,'acc-exp01-user01.txt ACC-Y')==1)
            if (tipo == "W")
                 vetor_picosMax_W_Y = [vetor_picosMax_W_Y picoMaximo];
             elseif (tipo == "W-U")
                 vetor_picosMax_WU_Y = [vetor_picosMax_WU_Y picoMaximo];
             elseif (tipo == "W-D")
                 vetor_picosMax_WD_Y = [vetor_picosMax_WD_Y picoMaximo];
             end
            
        elseif (strcmp(nome,'acc-exp01-user01.txt ACC-Z')==1)
            if (tipo == "W")
                 vetor_picosMax_W_Z = [vetor_picosMax_W_Z picoMaximo];
             elseif (tipo == "W-U")
                 vetor_picosMax_WU_Z = [vetor_picosMax_WU_Z picoMaximo];
             elseif (tipo == "W-D")
                 vetor_picosMax_WD_Z = [vetor_picosMax_WD_Z picoMaximo];
             end
            
        end       
             
%     % ======================================================================

         anterior=fim;
         
    end
    
    hold off
    

