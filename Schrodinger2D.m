format long
% Numeric Parameters
nx = 2;
ny = 1;
a = 1;
step = a/100;
[x_num, y_num] = meshgrid(0:step:a, 0:2*step:2*a);

% Schrodigner Eq (numeric then symbolic)
Psi_num = sqrt(2)/a * sin(pi*nx/a *x_num) * sin(pi*ny/(2*a) *y_num);
P_num = abs(Psi_num).^2;


% Energy
m = 1;
h_bar = 1;
[n_x, n_y] = meshgrid(1:10, 1:10); 
E = h_bar^2*n_x.^2/(2*m*a^2) + h_bar^2*n_y.^2/(8*m*a^2);

disp(P_num)
% Contour Surf
surf(x_num, y_num, Psi_num)
hold on
title('2D Shrodingner')
xlabel('x')
ylabel('y')
%zlabel('P(x,y)')

