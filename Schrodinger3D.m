syms x y E_naught
% Numeric Parameters
nx = 2;
ny = 2;
nz = 2;
a = 1;
step = a/100;
[x_num, y_num, z_num] = meshgrid(0:step:a, 0:step:a, 0:step:a);

% Schrodigner Eq & Probability
Psi_num = sqrt(2)/a*sin(pi*nx/a*x_num).*sin(pi*ny/(a)*y_num).*sin(pi*nz/(a)*z_num);
P_num = abs(Psi_num).^2;

% Energy
m = 1;
h_bar = 1;
%h_bar^2*pi^2/(2*m*a^2)
E = E_naught*(nx^2+ny^2+nz^2)
