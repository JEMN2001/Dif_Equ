clear all
t0 = 0;
y07 = 1;
y011= -2;
f7 = @(t,y) 0.5-t+2*y;
f11 = @(t,y) (4-t*y)/(1+y^2);
%7 a
yf = @(t) Runge_Kutta(f7,[t0,t],y07,0.1);
a7 = [yf(0.5), yf(1), yf(1.5)]
%7 b
yf = @(t) Runge_Kutta(f7,[t0,t],y07,0.05);
b7 = [yf(0.5), yf(1), yf(1.5)]
%11 a
yf = @(t) Runge_Kutta(f11,[t0,t],y011,0.1);
a11 = [yf(0.5), yf(1), yf(1.5)]
%11 b
yf = @(t) Runge_Kutta(f11,[t0,t],y011,0.05);
b11 = [yf(0.5), yf(1), yf(1.5)]
clear all