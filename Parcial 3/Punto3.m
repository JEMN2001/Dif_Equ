f = @(t,y) 1-t+4*y;
ana = @(t) (1/16)*(4*t-3+19*exp(4*t));
%abs(ana(0.5)-Euler(f,[0,0.5],1,0.1))
%abs(ana(0.5)-Euler(f,[0,0.5],1,0.05))
%abs(ana(0.5)-Euler(f,[0,0.5],1,0.01))
%abs(ana(1)-Euler(f,[0,1],1,0.1))
%abs(ana(1)-Euler(f,[0,1],1,0.05))
%abs(ana(1)-Euler(f,[0,1],1,0.01))
%abs(ana(1.5)-Euler(f,[0,1.5],1,0.1))
%abs(ana(1.5)-Euler(f,[0,1.5],1,0.05))
%abs(ana(1.5)-Euler(f,[0,1.5],1,0.01))
abs(ana(2)-Euler(f,[0,2],1,0.1))
abs(ana(2)-Euler(f,[0,2],1,0.05))
abs(ana(2)-Euler(f,[0,2],1,0.01))