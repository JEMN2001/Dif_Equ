function [tf, yf] = Runge_Kutta(f,t0,y0,n,h)
    yf = [y0];
    tf = [t0];
    for(i=2:n-1)
        k1 = f(tf(i-1),yf(i-1));
        k2 = f(tf(i-1)+0.5*h,yf(i-1)+0.5*k1*h);
        k3 = f(tf(i-1)+0.5*h,yf(i-1)+0.5*k2*h);
        k4 = f(tf(i-1)+h,yf(i-1)+k3*h);
        yf(i) = yf(i-1)+(1/6)*h*(k1+2*k2+2*k3+k4);
        tf(i) = tf(i-1)+h;
    end
end