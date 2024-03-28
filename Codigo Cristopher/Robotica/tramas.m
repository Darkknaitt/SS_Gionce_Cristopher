%Tramas

%2.27    %2.29           %2.31                %2.34
%X=3     %Z=2            %Y=4, Z=2            %Z=2, Y=4, X=-3
%z=180   %z=-150, y=90   %z-90, y=90, z=-90   %z=-143.1, y=180

syms x y z alp bet gam

x= input ("ingrese el desplazamiento en x: ")
y= input ("ingrese el desplazamiento en y: ")
z= input ("ingrese el desplazamiento en z: ")

%"ingrese las rotaciones en angulos de auler zyz"

alp= input ("Ingrese el angulo decimal alpha (z): ")
bet= input ("ingrese el angulo decimal beta (y): ")
gam= input ("ingrese el angulo deciaml gamma (z): ")



P=  [1 0 0 x;
     0 1 0 y;
     0 0 1 z;
     0 0 0 1]

Rx= [ 1        0          0        0;
      0    cosd(alp) -sind(alp)    0;
      0    sind(alp)  cosd(alp)    0;
      0        0          0        1]


Ry=[cosd(bet)     0    sind(bet)  0;
         0        1        0      0;
    -sind(bet)    0    cosd(bet)  0;
         0        0        0      1]



Rz=[cosd(gam) -sind(gam)    0    0;
    sind(gam)  cosd(gam)    0    0;
        0          0        1    0;
        0          0        0    1]

H=P*Rx*Ry*Rz