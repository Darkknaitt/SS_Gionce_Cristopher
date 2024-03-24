function [matz2] = MATz2(gam)
%UNTITLED4 Summary of this function goes here
%Funcion a la cual se ingresa un valor en grados y se entrega la rotacion
%en z2

%esta funcion realiza la rotacion en z2

%syms gam ;;;; para usar simbolicos en vez de valores fijos

matz2=[cos(gam) -sin(gam)    0;
      sin(gam)  cos(gam)    0;
      0           0         1]

end