 close 
 clear all
 clc

syms alp bet gam

alp= input ("introduzca angulo alpha: ")
bet= input ("introduzca angulo beta: ")
gam= input ("introduzca angulo gama: ")

resultado_zyz=MATz(alp)*MATy(bet)*MATz2(gam)

pause(1);


% investigar paqueteria Corke
% como realizar la inversa de una matriz
% pagina 60