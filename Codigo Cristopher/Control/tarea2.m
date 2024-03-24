 close 
 clear all
 clc

syms tht bet

tht= input ("introduzca angulo theta: ")
bet= input ("introduzca angulo beta: ")
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%para la matriz2,1 se debe introducir una angulo de 60 en una matriz de
%rotacion en x

%para la matriz3,1 se debe introducir un angulo de -90 en una matriz de
%rotacion en y



%angulo theta=60
%angulo betha=-90
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


x=adjoint(MATDx(tht))

b=det(MATDx(tht))


minv=x/b
minvreal=inv(MATDx(tht))

mat32=minv*MATDy(bet)


pause(1);


