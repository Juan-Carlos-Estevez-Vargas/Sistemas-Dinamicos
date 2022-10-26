clear
clc
clf

% Parte 1 - Linealización xy' - 2xy + 2 = 0 en y(0) = 1, y(0) = 2 Puntos de
% equilibrio
syms x y
z = 2 - 2*x*y
clf
figure(1)
ezplot(z, [0 4 -0 10])
grid
hold on
zl = -2*(x-1) - 2*(y-1)
ezplot(zl, [0 4 -0 10])

% Parte 2 - TdL a tramos
figure(2)
syms t
u0 = heaviside(t)
r0 = t*u0
r01 = (t-1)*heaviside(t-1)
r02 = (t-2)*heaviside(t-2)
ezplot(u0, [-1 3 -1 2])
grid
hold on
ezplot(r0, [-1 3 -1 2])
ezplot(r01, [-1 3 -1 2])

figure(3)
y = (r0 - 2*r01 + r02)
ezplot(y, [-1 3 -1 2])
grid

Y = laplace(y)

pretty(Y)
hold off

