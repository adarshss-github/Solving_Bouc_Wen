function dydt = funBoucWenrk4(y,xgt)
% dydt = [y(2); (1-y(1)^2)*y(2)-y(1)];
m = 1;
c = 0.3;
k = 9;
beta = 2;
gamma = 1;
n = 2;
dydt = [y(2); -c / m * y(2) - k/m * y(3) - xgt;...
    y(2) - beta * abs(y(2) ) * ( abs(y(3)) )^(n-1) * y(3) - gamma * y(2)...
    * ( abs(y(3)) )^n ];
end