% {
This script animates the movements of the planets generated by the c++
script. Not included in report because the change in perihelion angle
is to small to be seen
%}

load mercury.dat;         %  read data 
positions = mercury;
%Specifying plot graphics
figure;
hold on;
view(45,45);
max_val = max(max(positions(:,:)));
axis([-max_val max_val -max_val max_val -max_val max_val]);
xlabel('x-position [AU]','interpreter','latex')
ylabel('y-position [AU]','interpreter','latex')
zlabel('z-position [AU]','interpreter','latex')
title('Orbit of mercury around the sun (with correction)','interpreter','latex')
grid on

plot3(positions(:,1), positions(:,2), positions(:,3),'.y','markersize',30);
plot3(positions(:,4), positions(:,5), positions(:,6), '-r');
plot3(positions(end,4), positions(end,5), positions(end,6), '.b','markersize',10);

axis equal