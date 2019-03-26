clear all
t0 = 0;
y0 = 1;
h = 0.01;
n = (2/h)+2;
f = @(t,y) 1-t+4*y;
ana = @(t) (1/16)*(4*t-3+19*exp(4*t));
[tf,yf] = Euler_m(f,t0,y0,n,h);
rap = yf;
rap(1)
rap((1/h)*0.1+1)
rap((1/h)*0.2+1)
rap((1/h)*0.3+1)
rap((1/h)*0.4+1)
rap((1/h)*0.5+1)
rap((1/h)*1+1)
rap((1/h)*1.5+1)
rap((1/h)*2+1)