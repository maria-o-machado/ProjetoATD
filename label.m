function devolve =label(num)
    L = importdata("labels.txt");
    experiment_numberID = L(:,1);
    user_numberID = L(:,2);
    activity_number_ID  = L(:,3);
    Label_startPoint = L(:,4);
    Label_endPoint = L(:, 5);

    %ate ao indice 207
    cont=0;
    menor=0;
    maior=0;

    for i=1:numel(experiment_numberID)
        if(experiment_numberID(i)==num)
            cont=cont+1;
            if (cont==1)
                menor=i;
            end
            maior=i;
        end
    end
    m1=experiment_numberID(menor:maior);
    m2=user_numberID(menor:maior);
    m3=activity_number_ID(menor:maior);
    m4=Label_startPoint(menor:maior);
    m5=Label_endPoint(menor:maior);

    devolve=[m3 m4 m5];
end

