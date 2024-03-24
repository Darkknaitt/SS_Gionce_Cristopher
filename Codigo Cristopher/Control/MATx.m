function [matx] = MATx(tht)
%UNTITLED4 Summary of this function goes here
%Funcion a la cual se ingresa un valor en grados y se entrega la rotacion en z

%esta funcion realiza la rotacion en x

matx=[1      0            0;
      0   cos(tht)   -sin(tht);
      0   sin(tht)   cos(tht)]

end