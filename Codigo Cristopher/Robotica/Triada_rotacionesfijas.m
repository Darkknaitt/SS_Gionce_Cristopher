clc %limpiar ventana de comandos
clear all %limpiar todas las variables
close % cierra cualquier figura abierta
view (135,22);%%%(130,30)
axis ([-1 1 -1 1 -1 1]);% Se determina las dimenciones (escala) de los límites de los ejes.
xlabel('Eje X')
ylabel('Eje Y')
zlabel('Eje Z')
grid on
% Trazar una línea desde el punto "a" hasta el punto "b"
    %a=[x1,y1,z1]-->inicio
    %b=[x2,y2,z2]-->fin
x=[1,0,0]';
y=[0,1,0]';
z=[0,0,1]';
line([-x(1) x(1)],[-x(2) x(2)],[-x(3) x(3)],'color','y','linewidth',1.5);%línea del eje X
line([-y(1) y(1)],[-y(2) y(2)],[-y(3) y(3)],'color','c','linewidth',1.5);
line([-z(1) z(1)],[-z(2) z(2)],[-z(3) z(3)],'color','#7E2F8E','linewidth',1.5);
%line([0 0],[-15 15],[0 0],'color','k','linewidth',1.5);%línea del eje Y
%line([0 0],[0 0],[-15 15],'color','k','linewidth',1.5);%línea del eje Z
%pause (0.5) % pausa el programa 1/2 segundo
pause % pausa el programa de manera indefinida hasta presionar una tecla

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% giro en z=23.5
j=24;
h=0.5;
%%%Rotación con respecto al eje Z %%%Rot_Z_teta=[cos(Teta) -sin(Teta) 0;sin(Teta) cos(Teta) 0;0 0 1];
for i=0:h:j%%%% Ángulo TETA
    xU=cosd(i); 
    yU=sind(i);
    zU=0;
    xV=-sind(i);
    yV=cosd(i);
    zV=0;
    xW=0;
    yW=0;
    zW=1;
    RotZ=[xU xV xW;yU yV yW;zU zV zW];
    %RotZ=[xU xV xW...
    %      yU yV yW...
    %      zU zV zW...]
    %Rot_Z_teta=[cosd(i) -sind(i) 0;sind(i) cosd(i) 0;0 0 1];
    view (135,22);
    axis ([-1 1 -1 1 -1 1]);
    xlabel('Eje X')
    ylabel('Eje Y')
    zlabel('Eje Z')
    grid on
    %%%%%%%%%%%%%%%%%%%%%%%%%%Líneas de ejes coordenados fijos.
    % Trazar una línea desde el punto "a" hasta el punto "b"
    %a=[x1,y1,z1]-->inicio
    %b=[x2,y2,z2]-->fin
    line([-1 1],[0 0],[0 0],'color','k','linewidth',1.5);%línea del eje X
    line([0 0],[-1 1],[0 0],'color','k','linewidth',1.5);%línea del eje Y
    line([0 0],[0 0],[-1 1],'color','k','linewidth',1.5);%línea del eje Z
    %%%%%%%%%%%%%%%%%%%%%%%%%Líneas del sistema de referencia móvil.
    line([0 xU],[0 yU],[0 zU],'color','r','linewidth',3);%Línea del eje móvil U
    %line([0 RotZ(1,1)],[0 RotZ(2,1)],[0 RotZ(3,1)],'color','r','linewidth',3);
    line([0 xV],[0 yV],[0 zV],'color','g','linewidth',3);%Línea del eje móvil V
    line([0 xW],[0 yW],[0 zW],'color','b','linewidth',3);%Línea del eje móvil W
    %%%%%%%%%%%%%%%%%%%%%%%%%%
    pause(0.001)
    if i>j%%% Ángulo TETA %%%%if i<90
        %line([0 xU],[0 yU],[0 zU],'color','w','linewidth',3);
        %line([0 xV],[0 yV],[0 zV],'color','w','linewidth',3);
        %line([0 xW],[0 yW],[0 zW],'color','w','linewidth',3);
        clf%%clf
    end
end
pause(0.5);%%%(0.5)



%%%giro en x=60
L=90;
k=5;
for i=0:k:L%%%Ángulo Alfa
    xU=1;
    yU=0;
    zU=0;
    xV=0;
    yV=cosd(i);
    zV=sind(i);
    xW=0;
    yW=-sind(i);
    zW=cosd(i);
    RotX=[xU xV xW;yU yV yW;zU zV zW];
    RR=RotX*RotZ;
    view (135,22);
    axis ([-1 1 -1 1 -1 1]);
    xlabel('Eje X')
    ylabel('Eje Y')
    zlabel('Eje Z')
    grid on
    %%%%%%%%%%%%%%%%%%%%%%%%%%Líneas de ejes coordenados fijos.
    line([-1 1],[0 0],[0 0],'color','k','linewidth',1.5);
    line([0 0],[-1 1],[0 0],'color','k','linewidth',1.5);
    line([0 0],[0 0],[-1 1],'color','k','linewidth',1.5);
    %%%%%%%%%%%%%%%%%%%%%%%%%Líneas del sistema de referencia móvil.
    line([0 RR(1,1)],[0 RR(2,1)],[0 RR(3,1)],'color','r','linewidth',3);
    line([0 RR(1,2)],[0 RR(2,2)],[0 RR(3,2)],'color','g','linewidth',3);
    line([0 RR(1,3)],[0 RR(2,3)],[0 RR(3,3)],'color','b','linewidth',3);
    %%%%%%%%%%%%%%%%%%%%%%%%%%
    pause (0.001);
    if i<L%%%Águlo Alfa if i<90%%%Águlo Alfa
        %line([0 RR(1,1)],[0 RR(2,1)],[0 RR(3,1)],'color','w','linewidth',3);
        %line([0 RR(1,2)],[0 RR(2,2)],[0 RR(3,2)],'color','g','linewidth',3);
        %line([0 RR(1,3)],[0 RR(2,3)],[0 RR(3,3)],'color','b','linewidth',3);
        clf
    end
end    
pause (0.5);


%%%%%%%%%
%%% Para Giros negativos for i=0:(-1):(-90)
%%%%%    if i>(-90)



%%%giro en y=77.8
%%%Rotación con respecto al eje Y %%%Rot_Y_fi=[cos(Fi) 0 sin(Fi);0 1 0;-sin(Fi) 0 cos(Fi)]
M=77.8;
n=1;
for i=0:n:M%%%Ángulo Fi
    xU=cosd(i);
    yU=0;
    zU=-sind(i);
    xV=0;
    yV=1;
    zV=0;
    xW=sind(i);
    yW=0;
    zW=cosd(i);
    RotY=[xU xV xW;yU yV yW;zU zV zW];
    RRR=RotY*RotX*RotZ;%%% RotY*RR
    view (135,22);
    axis ([-1 1 -1 1 -1 1]);
    xlabel('Eje X')
    ylabel('Eje Y')
    zlabel('Eje Z')
    grid on
    %%%%%%%%%%%%%%%%%%%%%%%%%%Líneas de ejes coordenados fijos.
    line([-1 1],[0 0],[0 0],'color','k','linewidth',1.5);
    line([0 0],[-1 1],[0 0],'color','k','linewidth',1.5);
    line([0 0],[0 0],[-1 1],'color','k','linewidth',1.5);
    %%%%%%%%%%%%%%%%%%%%%%%%%Líneas del sistema de referencia móvil.
    line([0 RRR(1,1)],[0 RRR(2,1)],[0 RRR(3,1)],'color','r','linewidth',3);
    line([0 RRR(1,2)],[0 RRR(2,2)],[0 RRR(3,2)],'color','g','linewidth',3);
    line([0 RRR(1,3)],[0 RRR(2,3)],[0 RRR(3,3)],'color','b','linewidth',3);
    %%%%%%%%%%%%%%%%%%%%%%%%%%
    pause (0.001);
    if i<M%%%%%%Angulo Fiif i<90%%%%%%Angulo Fi
        %line([0 RRR(1,1)],[0 RRR(2,1)],[0 RRR(3,1)],'color','w','linewidth',3);
        %line([0 RRR(1,2)],[0 RRR(2,2)],[0 RRR(3,2)],'color','g','linewidth',3);
        %line([0 RRR(1,3)],[0 RRR(2,3)],[0 RRR(3,3)],'color','b','linewidth',3);
        clf
    end
end  
pause(0.5)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%Rotación con respecto al eje X %%%Rot_X_alfa=[1 0 0;0 cos(Alfa) -sin(Alfa);0 sin(Alfa) cos(Alfa)];
L=90;
k=5;
for i=0:k:L%%%Ángulo Alfa
    xU=1;
    yU=0;
    zU=0;
    xV=0;
    yV=cosd(i);
    zV=sind(i);
    xW=0;
    yW=-sind(i);
    zW=cosd(i);
    RotX=[xU xV xW;yU yV yW;zU zV zW];
    RR=RotX*RotZ;
    view (135,22);
    axis ([-1 1 -1 1 -1 1]);
    xlabel('Eje X')
    ylabel('Eje Y')
    zlabel('Eje Z')
    grid on
    %%%%%%%%%%%%%%%%%%%%%%%%%%Líneas de ejes coordenados fijos.
    line([-1 1],[0 0],[0 0],'color','k','linewidth',1.5);
    line([0 0],[-1 1],[0 0],'color','k','linewidth',1.5);
    line([0 0],[0 0],[-1 1],'color','k','linewidth',1.5);
    %%%%%%%%%%%%%%%%%%%%%%%%%Líneas del sistema de referencia móvil.
    line([0 RR(1,1)],[0 RR(2,1)],[0 RR(3,1)],'color','r','linewidth',3);
    line([0 RR(1,2)],[0 RR(2,2)],[0 RR(3,2)],'color','g','linewidth',3);
    line([0 RR(1,3)],[0 RR(2,3)],[0 RR(3,3)],'color','b','linewidth',3);
    %%%%%%%%%%%%%%%%%%%%%%%%%%
    pause (0.001);
    if i<L%%%Águlo Alfa if i<90%%%Águlo Alfa
        %line([0 RR(1,1)],[0 RR(2,1)],[0 RR(3,1)],'color','w','linewidth',3);
        %line([0 RR(1,2)],[0 RR(2,2)],[0 RR(3,2)],'color','g','linewidth',3);
        %line([0 RR(1,3)],[0 RR(2,3)],[0 RR(3,3)],'color','b','linewidth',3);
        clf
    end
end    
pause (0.5);
%%%giro en x
L1=180;
k1=5;
for i=0:k1:L1%%%Ángulo Alfa
    xU=1;
    yU=0;
    zU=0;
    xV=0;
    yV=cosd(i);
    zV=sind(i);
    xW=0;
    yW=-sind(i);
    zW=cosd(i);
    RotX1=[xU xV xW;yU yV yW;zU zV zW];
    RRRR=RotY*RotX*RotZ*RotX1;
    view (135,22);
    axis ([-1 1 -1 1 -1 1]);
    xlabel('Eje X')
    ylabel('Eje Y')
    zlabel('Eje Z')
    grid on
    %%%%%%%%%%%%%%%%%%%%%%%%%%Líneas de ejes coordenados fijos.
    line([-1 1],[0 0],[0 0],'color','k','linewidth',1.5);
    line([0 0],[-1 1],[0 0],'color','k','linewidth',1.5);
    line([0 0],[0 0],[-1 1],'color','k','linewidth',1.5);
    %%%%%%%%%%%%%%%%%%%%%%%%%Líneas del sistema de referencia móvil.
    line([0 RRRR(1,1)],[0 RRRR(2,1)],[0 RRRR(3,1)],'color','r','linewidth',3);
    line([0 RRRR(1,2)],[0 RRRR(2,2)],[0 RRRR(3,2)],'color','g','linewidth',3);
    line([0 RRRR(1,3)],[0 RRRR(2,3)],[0 RRRR(3,3)],'color','b','linewidth',3);
    %%%%%%%%%%%%%%%%%%%%%%%%%%
    pause (0.001);
    if i<L1%%%Águlo Alfa if i<90%%%Águlo Alfa
        %line([0 RR(1,1)],[0 RR(2,1)],[0 RR(3,1)],'color','w','linewidth',3);
        %line([0 RR(1,2)],[0 RR(2,2)],[0 RR(3,2)],'color','g','linewidth',3);
        %line([0 RR(1,3)],[0 RR(2,3)],[0 RR(3,3)],'color','b','linewidth',3);
        clf
    end
end    
pause (0.5);
%%%%%%%%%
%%% Para Giros negativos for i=0:(-1):(-90)
%%%%%    if i>(-90)

%%%Rotación con respecto al eje Y %%%Rot_Y_fi=[cos(Fi) 0 sin(Fi);0 1 0;-sin(Fi) 0 cos(Fi)]
for i=0:1:120%%%Ángulo Fi
    xU=cosd(i);
    yU=0;
    zU=-sind(i);
    xV=0;
    yV=1;
    zV=0;
    xW=sind(i);
    yW=0;
    zW=cosd(i);
    RotY=[xU xV xW;yU yV yW;zU zV zW];
    RRR=RotY*RotX*RotZ;%%% RotY*RR
    view (135,22);
    axis ([-1 1 -1 1 -1 1]);
    xlabel('Eje X')
    ylabel('Eje Y')
    zlabel('Eje Z')
    grid on
    %%%%%%%%%%%%%%%%%%%%%%%%%%Líneas de ejes coordenados fijos.
    line([-1 1],[0 0],[0 0],'color','k','linewidth',1.5);
    line([0 0],[-1 1],[0 0],'color','k','linewidth',1.5);
    line([0 0],[0 0],[-1 1],'color','k','linewidth',1.5);
    %%%%%%%%%%%%%%%%%%%%%%%%%Líneas del sistema de referencia móvil.
    line([0 RRR(1,1)],[0 RRR(2,1)],[0 RRR(3,1)],'color','r','linewidth',3);
    line([0 RRR(1,2)],[0 RRR(2,2)],[0 RRR(3,2)],'color','g','linewidth',3);
    line([0 RRR(1,3)],[0 RRR(2,3)],[0 RRR(3,3)],'color','b','linewidth',3);
    %%%%%%%%%%%%%%%%%%%%%%%%%%
    pause (0.001);
    if i<120%%%%%%Angulo Fiif i<90%%%%%%Angulo Fi
        %line([0 RRR(1,1)],[0 RRR(2,1)],[0 RRR(3,1)],'color','w','linewidth',3);
        %line([0 RRR(1,2)],[0 RRR(2,2)],[0 RRR(3,2)],'color','g','linewidth',3);
        %line([0 RRR(1,3)],[0 RRR(2,3)],[0 RRR(3,3)],'color','b','linewidth',3);
        clf
    end
end  
pause(0.5)
