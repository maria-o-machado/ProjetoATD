function [vetor_ultimoPico_dinamica_X, vetor_ultimoPico_dinamica_Y, vetor_ultimoPico_dinamica_Z, vetor_ultimoPico_estatica_X, vetor_ultimoPico_estatica_Y, vetor_ultimoPico_estatica_Z, vetor_ultimoPico_transicao_X, vetor_ultimoPico_transicao_Y, vetor_ultimoPico_transicao_Z]=calcLast(nome, data, fig, matriz_atividade)
        
    %=========ULTIMO PICO=========
    
    vetor_ultimoPico_dinamica_X = [];
    vetor_ultimoPico_dinamica_Y = [];
    vetor_ultimoPico_dinamica_Z = [];
    
    vetor_ultimoPico_estatica_X = [];
    vetor_ultimoPico_estatica_Y = [];
    vetor_ultimoPico_estatica_Z = [];
    
    vetor_ultimoPico_transicao_X = [];
    vetor_ultimoPico_transicao_Y = [];
    vetor_ultimoPico_transicao_Z = [];
    
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
        if (tipo == "W") || (tipo == "W-U") || (tipo == "W-D")
            if (strcmp(nome,'acc-exp01-user01.txt ACC-X')==1)
                vetor_ultimoPico_dinamica_X = [vetor_ultimoPico_dinamica_X ultimoPico];
                
            elseif (strcmp(nome,'acc-exp01-user01.txt ACC-Y')==1)
                    vetor_ultimoPico_dinamica_Y = [vetor_ultimoPico_dinamica_Y ultimoPico];

            elseif (strcmp(nome,'acc-exp01-user01.txt ACC-Z')==1)
                    vetor_ultimoPico_dinamica_Z = [vetor_ultimoPico_dinamica_Z ultimoPico];
            end                
            
        %Atividade Estatica
        elseif (tipo == "SIT") || (tipo == "STAND") || (tipo == "LAY")
            
            if (strcmp(nome,'acc-exp01-user01.txt ACC-X')==1)
                vetor_ultimoPico_transicao_X = [vetor_ultimoPico_transicao_X ultimoPico];
                
            elseif (strcmp(nome,'acc-exp01-user01.txt ACC-Y')==1)
                vetor_ultimoPico_transicao_Y = [vetor_ultimoPico_transicao_Y ultimoPico];
                
            elseif (strcmp(nome,'acc-exp01-user01.txt ACC-Z')==1)
                vetor_ultimoPico_transicao_Z = [vetor_ultimoPico_transicao_Z ultimoPico];
            end
                
                
        %Atividade Transicao      
        else
            if (strcmp(nome,'acc-exp01-user01.txt ACC-X')==1)
                vetor_ultimoPico_estatica_X = [vetor_ultimoPico_estatica_X ultimoPico];
                
            elseif (strcmp(nome,'acc-exp01-user01.txt ACC-Y')==1)
                vetor_ultimoPico_estatica_Y = [vetor_ultimoPico_estatica_Y ultimoPico];
                
            elseif (strcmp(nome,'acc-exp01-user01.txt ACC-Z')==1)
                vetor_ultimoPico_estatica_Z = [vetor_ultimoPico_estatica_Z ultimoPico];
            end
                
        end
             
%     % ======================================================================

         anterior=fim;
         
    end
    
    hold off
    

