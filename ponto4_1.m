function ponto4_1(nome, data, matriz_atividade)

        
    t=0:7/(numel(data)-1):7;
    
    anterior=t(1,1);

    
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
       
% ============================== Ponto4.1 ==============================
        if (strcmp(nome,'acc-exp01-user01.txt ACC-X')==1 && strcmp(tipo,'W')==1)
            janelas(atividade_acc, 18, 'ACC-X', 'W');
        elseif (strcmp(nome,'acc-exp01-user01.txt ACC-Y')==1 && strcmp(tipo,'W')==1)
            janelas(atividade_acc, 21, 'ACC-Y', 'W');
        elseif (strcmp(nome,'acc-exp01-user01.txt ACC-Z')==1 && strcmp(tipo,'W')==1)
            janelas(atividade_acc, 24, 'ACC-Z', 'W');
        end
        
        if (strcmp(nome,'acc-exp01-user01.txt ACC-X')==1 && strcmp(tipo,'LAY')==1)
            janelas(atividade_acc, 19, 'ACC-X','LAY');
        elseif (strcmp(nome,'acc-exp01-user01.txt ACC-Y')==1 && strcmp(tipo,'LAY')==1)
            janelas(atividade_acc, 22, 'ACC-Y','LAY');
        elseif (strcmp(nome,'acc-exp01-user01.txt ACC-Z')==1 && strcmp(tipo,'LAY')==1)
            janelas(atividade_acc, 25, 'ACC-Z','LAY');
        end
        
        if (strcmp(nome,'acc-exp01-user01.txt ACC-X')==1 && strcmp(tipo,'STAND-SIT')==1)
            janelas(atividade_acc, 20, 'ACC-X','STAND-SIT');
        elseif (strcmp(nome,'acc-exp01-user01.txt ACC-Y')==1 && strcmp(tipo,'STAND-SIT')==1)
            janelas(atividade_acc, 23, 'ACC-Y','STAND-SIT');
        elseif (strcmp(nome,'acc-exp01-user01.txt ACC-Z')==1 && strcmp(tipo,'STAND-SIT')==1)
            janelas(atividade_acc, 26, 'ACC-Z','STAND-SIT');
        end
        
        anterior=fim;
         
    end
        
        
        
