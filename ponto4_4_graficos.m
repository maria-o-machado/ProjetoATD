function ponto4_4_graficos(vetorX, vetorY, vetorZ, vetorX1, vetorY1, vetorZ1, vetorX2, vetorY2, vetorZ2)  

    hold on;

    for i=1:numel(vetorX)
        plot3(vetorX(i),vetorY(i),vetorZ(i), 'ro');
        plot3(vetorX1(i),vetorY1(i),vetorZ1(i), 'bo');
        plot3(vetorX2(i),vetorY2(i),vetorZ2(i), 'go');
        drawnow;
    end

    hold off


end