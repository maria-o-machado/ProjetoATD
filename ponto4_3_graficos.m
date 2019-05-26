function ponto4_3_graficos(vetorX, vetorY, vetorZ, vetorX1, vetorY1, vetorZ1)  

    hold on;

    for i=1:numel(vetorX)
        plot3(vetorX(i),vetorY(i),vetorZ(i), 'ro');
        plot3(vetorX1(i),vetorY1(i),vetorZ1(i), 'bo');
        drawnow;
    end

    hold off


end