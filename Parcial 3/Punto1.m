f = @(t,y) 1-t+4*y;
t0 = 0;
y0 = 1;
h = 0.1;
t = 0:h:2;
for(i=1:length(t))
    y(i) = Euler(f,[t0,t(i)],y0,h);
end
plot(y,t),xlabel('tiempo'),ylabel('valor con euler');