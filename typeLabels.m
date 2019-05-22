function tipo = typeLabels(num)
    if (num==1)
        tipo = "W";
    elseif (num==2)
        tipo = "W-U";
    elseif (num==3)
        tipo = "W-D";
    elseif (num==4)
        tipo = "SIT";
    elseif (num==5)
        tipo = "STAND";
    elseif (num==6)
        tipo = "LAY";
    elseif (num==7)
        tipo = "STAND-SIT";
    elseif (num==8)
        tipo = "SIT-STAND";
    elseif (num==9)
        tipo = "SIT-LIE";
    elseif (num==10)
        tipo = "LIE-SIT";
    elseif (num==11)
        tipo = "STAND-LIE";
    elseif (num==12)
        tipo = "LIE-STAND";
    end
end