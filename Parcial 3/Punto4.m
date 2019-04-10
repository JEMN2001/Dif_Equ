f = @(x,y) 6*x*x-3*x*x*y;
ana = @(x) 2+exp(-1.*x.*x.*x);
h1 = 0.1;
h2 = 0.01;
h3 = 0.001;
y0 = 3;
x0 = 0;
x1 = 0:h1:2;
x2 = 0:h2:2;
x3 = 0:h3:2;
for (i=1:length(x1))
    y1(i) = Euler(f,[x0,x1(i)],y0,h1);
end
for (i=1:length(x2))
    y2(i) = Euler(f,[x0,x2(i)],y0,h2);
end
for (i=1:length(x3))
    y3(i) = Euler(f,[x0,x3(i)],y0,h3);
end
y4 = ana(x3);
%plot(x1,y1,x2,y2,x3,y3,x3,y4),legend('h=0.1','h=0.01','h=0.001','Analitica');
test = 2;
abs(ana(test)-Euler(f,[x0,test],y0,h1))
abs(ana(test)-Euler(f,[x0,test],y0,h2))
abs(ana(test)-Euler(f,[x0,test],y0,h3))