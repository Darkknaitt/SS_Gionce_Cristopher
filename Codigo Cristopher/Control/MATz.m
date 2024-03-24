function [matz] = MATz(alp)
%UNTITLED4 Summary of this function goes here
%Funcion a la cual se ingresa un valor en grados y se entrega la rotacion en z

%esta funcion realiza la rotacion en z

matz=[cos(alp) -sin(alp)    0;
      sin(alp)  cos(alp)    0;
      0           0         1]

end