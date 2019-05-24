function [media_passos_w, media_passos_wu, media_passos_wd, desvio_padrao_w, desvio_padrao_wu, desvio_padrao_wd]=analiseGrafica(nome, data, fig, matriz_atividade)
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
    atividades_dinamicas=1;
    atividades_transicao=2;
    atividades_estaticas=3;
    
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
    if (strcmp(nome,'acc-exp01-user01.txt ACC-X')==1 || strcmp(nome,'acc-exp01-user01.txt ACC-Y')==1 || strcmp(nome,'acc-exp01-user01.txt ACC-Z')==1)
       figure(fig)
    end
    
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
        
% =============================== Ponto4 ===============================
        discrete_fourier_transform = dFT(atividade_acc);
        f=linspace(-25,25,numel(atividade_acc));

        if (strcmp(nome,'acc-exp01-user01.txt ACC-X')==1 || strcmp(nome,'acc-exp01-user01.txt ACC-Y')==1 || strcmp(nome,'acc-exp01-user01.txt ACC-Z')==1)
            if (tipo == "W") || (tipo == "W-U") || (tipo == "W-D")
                subplot(maior,3,atividades_dinamicas);
                f=linspace(-25,25,numel(atividade_acc));
                plot(f,abs(discrete_fourier_transform));
                x=sprintf('[%s] Atividade Tipo: %s', nome, tipo);
                title(x,'FontSize',7)
                atividades_dinamicas=atividades_dinamicas+3;

            elseif (tipo == "SIT") || (tipo == "STAND") || (tipo == "LAY")
                subplot(maior,3,atividades_estaticas);
                plot(f,abs(discrete_fourier_transform));
                x=sprintf('[%s] Atividade Tipo: %s', nome, tipo);
                title(x,'FontSize',7)
                atividades_estaticas=atividades_estaticas+3;
            else
                subplot(maior,3,atividades_transicao);
                plot(f,abs(discrete_fourier_transform));
                x=sprintf('[%s] Atividade Tipo: %s', nome, tipo);
                title(x,'FontSize',7)
                atividades_transicao=atividades_transicao+3;
            end
        end
       
% ============================== Ponto4.1 ==============================
        discrete_fourier_transform_janela = ponto4_1(atividade_acc, 13);
 
% ============================== Ponto4.2 ==============================
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
    %Media do numero de passos da atividade W
    sum_numero_passos_w=0;

    for i=1:length(numero_passos_w)
        sum_numero_passos_w=sum_numero_passos_w+numero_passos_w(i);
    end
    
    %Media do numero de passos da atividade WU
    sum_numero_passos_wu=0;

    for i=1:length(numero_passos_wu)
        sum_numero_passos_wu=sum_numero_passos_wu+numero_passos_wu(i);
    end
    
     %Media do numero de passos da atividade WD
    sum_numero_passos_wd=0;

    for i=1:length(numero_passos_wd)
        sum_numero_passos_wd=sum_numero_passos_wd+numero_passos_wd(i);
    end

% ======================= MEDIA E DESVIO PADRAO W ======================= 
    desvio_padrao_w=std(numero_passos_w);
    
    media_passos_w=sum_numero_passos_w./length(numero_passos_w);
    
% ======================= MEDIA E DESVIO PADRAO WU ======================= 
    desvio_padrao_wu=std(numero_passos_w);
    
    media_passos_wu=sum_numero_passos_wu./length(numero_passos_wu);

% ======================= MEDIA E DESVIO PADRAO WD ======================= 
    desvio_padrao_wd=std(numero_passos_wd);
    
    media_passos_wd=sum_numero_passos_wd./length(numero_passos_wd);
   
    

