% Programa de simulacion del modelo
% del pendulo invertido sobre una plataforma movil.
% Parametros
global M F r0 u0 m L J C g
% Movil
M = 0.48; % masa
F = 3.83; % constante de friccion
% Pendulo
m = 0.16; % masa
L = 0.25; % longitud del pendulo (distancia entre el eje y el centro de
% gravedad)
J = 0.0043; % momento de inercia alrededor del centro de gravedad
C = 0.00218; % constante de friccion
g = 9.8; % aceleracion de gravedad
% condiciones iniciales
x0 = [0.4 0 pi/40 0]';
% tiempo de simulacion
ti = 0; tf = 100;
[t,x] = ode45('mpend',[ti tf],x0);
subplot(221),plot(t,x(:,1))
title('Posicion del movil'),grid
subplot(222),plot(t,x(:,3))
title('Angulo de rotacion del pendulo'),grid
subplot(223),plot(t,x(:,1)+L*sin(x(:,3)))
title('Posicion del c.g. del pendulo'),grid
% fin de spend.m