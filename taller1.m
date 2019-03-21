clear all
t0 = 0;
y0 = 1;
n = 10;
h = 1/n;
f = @(t,y) 3+exp(-1*t)-0.5*y;
ana = @(t) 6-2*exp(-1*t)-3*exp(-0.5*t);
[tf,yf] = Euler(f,t0,y0,n,h);