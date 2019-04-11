clear all
sigma = 15;
b = 8/3;
r = 20;
C0 = [1,1,1];
f = @(x,y,z) [-1*sigma*x+sigma*y,r*x-y-x*z,-1*b*z+x*y];
h = 0.01;
t = 1:h:50;
for(i=1:length(t))
    [xf(i),yf(i),zf(i)] = Runge_Kutta_vec(f,[0,t(i)],C0,h);
end
plot3(xf,yf,zf);