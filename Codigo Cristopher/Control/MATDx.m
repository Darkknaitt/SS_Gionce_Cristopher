function [matx] = MATDx(tht)
%UNTITLED4 Summary of this function goes here
%Funcion a la cual se ingresa un valor en grados y se entrega la rotacion en z

%esta funcion realiza la rotacion en x

matx=[1      0            0;
      0   cosd(tht)   -sind(tht);
      0   sind(tht)   cosd(tht)]

end