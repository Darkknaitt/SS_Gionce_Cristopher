 close 
 clear all
 clc

syms alp bet gam

alp= input ("introduzca angulo alpha: ")
bet= input ("introduzca angulo beta: ")
gam= input ("introduzca angulo gama: ")

resultado_euler=MATz(alp)*MATy(bet)*MATz2(gam)

x=adjoint(resultado_euler)

b=det(resultado_euler)


minv=x/b

minvreal=inv(resultado_euler)

id=minv*resultado_euler%comprobacion matriz identidad
pause(1);


% investigar paqueteria Corke
% como realizar la inversa de una matriz
% pagina 60
% de latex siempre bien hecho, solo mencioanr las tareas, aunque no solo