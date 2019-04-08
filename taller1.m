clear all
t0 = 0;
y0 = 1;
h = 0.05;
f = @(t,y) 1-t+4*y;
ana = @(t) (1/16)*(4*t-3+19*exp(4*t));
yf = @(t) Euler(f,[t0,t],y0,h);
yf(0.3)
