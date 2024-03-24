view (135,22);%%%(130,30)%%% Valores angulares del Azimut y de la elevación.
axis ([-1 1 -1 1 -1 1]);% Se determina las dimenciones (escala) de los límites de los ejes.
set(gcf,'Color','#B4EC44'); % Se configura el color del contorno de la ventana de la figura
set(gca,'Color','#8F8F8F'); % Se configura el color del plano de la figura
grid on
%grid minor 
xlabel('Eje X')
ylabel('Eje Y')
zlabel('Eje Z')
%grid on
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
pause (0.5) % pausa el programa 1/2 segundo
%pause % pausa el programa de manera indefinida hasta presionar una tecla
%%%Rotación con respecto al eje Z %%%Rot_Z_teta=[cos(Teta) -sin(Teta) 0;sin(Teta) cos(Teta) 0;0 0 1];
for i=0:0.5:90%%%% Ángulo TETA
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
    %RotZ=
    %        U   V  W
    %     x [xU xV xW...
    %     y  yU yV yW...
    %     z  zU zV zW...]
    view (135,22);
    axis ([-1 1 -1 1 -1 1]);
    set(gca,'Color','#8F8F8F');
    xlabel('Eje X')
    ylabel('Eje Y')
    zlabel('Eje Z')
    grid on
    %grid minor
    %%%%%%%%%%%%%%%%%%%%%%%%%%    Líneas de ejes coordenados fijos.
    % Trazar una línea desde el punto "a" hasta el punto "b"
    %a=[x1,y1,z1]-->inicio
    %b=[x2,y2,z2]-->fin
    line([-1 1],[0 0],[0 0],'color','y','linewidth',1.5);%línea del eje X
    line([0 0],[-1 1],[0 0],'color','c','linewidth',1.5);%línea del eje Y
    line([0 0],[0 0],[-1 1],'color','#7E2F8E','linewidth',1.5);%línea del eje Z
    %%%%%%%%%%%%%%%%%%%%%%%%%  Líneas del sistema de referencia móvil.
    %line([0 xU],[0 yU],[0 zU],'color','r','linewidth',3);%Línea del eje móvil U
    a=line([0 RotZ(1,1)],[0 RotZ(2,1)],[0 RotZ(3,1)],'color','r','linewidth',3);
    %line([0 xV],[0 yV],[0 zV],'color','g','linewidth',3);%Línea del eje móvil V
    b=line([0 RotZ(1,2)],[0 RotZ(2,2)],[0 RotZ(3,2)],'color','g','linewidth',3);
    %line([0 xW],[0 yW],[0 zW],'color','b','linewidth',3);%Línea del eje móvil W
    c=line([0 RotZ(1,3)],[0 RotZ(2,3)],[0 RotZ(3,3)],'color','b','linewidth',3);
    %%%%%%%%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    pause(0.001)
    %pause()
    if i<90%%% Ángulo TETA %%%%if i<90
        %line([0 xU],[0 yU],[0 zU],'color','w','linewidth',3);
        %line([0 xV],[0 yV],[0 zV],'color','w','linewidth',3);
        %line([0 xW],[0 yW],[0 zW],'color','w','linewidth',3);
        clf%%clf
        %delete(a)
        %delete(b)
        %delete(c)
    end
    disp(i)
end
pause()
close all
