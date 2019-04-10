f = @(t,y) 1-t+4*y;
ana = @(t) (1/16)*(4*t-3+19*exp(4*t));
t0 = 0;
y0 = 1;
h1 = 0.05;
h2 = 0.02;
h3 = 0.01;
h4 = 0.005;
h5 = 0.001;
t1 = 0:h1:1;
t2 = 0:h2:1;
t3 = 0:h3:1;
t4 = 0:h4:1;
t5 = 0:h5:1;
y6 = ana(t5);
for(i=1:length(t1))
    y1(i) = Euler(f,[t0,t1(i)],y0,h1);
end
for(i=1:length(t2))
    y2(i) = Euler(f,[t0,t2(i)],y0,h2);
end
for(i=1:length(t3))
    y3(i) = Euler(f,[t0,t3(i)],y0,h3);
end
for(i=1:length(t4))
    y4(i) = Euler(f,[t0,t4(i)],y0,h4);
end
for(i=1:length(t5))
    y5(i) = Euler(f,[t0,t5(i)],y0,h5);
end
plot(t1,y1,t2,y2,t3,y3,t4,y4,t5,y5,t5,y6),legend('h=0.05','h=0.02','h=0.01','h=0.005','h=0.001','Analitica'),xlabel('tiempo'),ylabel('valores con euler');;