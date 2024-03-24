function [maty] = MATDy(bet)
%UNTITLED4 Summary of this function goes here
%Funcion a la cual se ingresa un valor en grados y se entrega la rotacion en y
%syms bet
%esta funcion realiza la rotacion en y
maty=[cosd(bet)     0    sind(bet);
        0          1        0   ;
     -sind(bet)     0    cosd(bet)]

end