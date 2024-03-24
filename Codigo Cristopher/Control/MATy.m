function [maty] = MATy(bet)
%UNTITLED4 Summary of this function goes here
%Funcion a la cual se ingresa un valor en grados y se entrega la rotacion en y
%syms bet
%esta funcion realiza la rotacion en y
maty=[cos(bet)     0    sin(bet);
        0          1        0   ;
     -sin(bet)     0    cos(bet)]

end