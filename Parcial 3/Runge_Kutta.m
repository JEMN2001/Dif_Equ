function yf = Runge_Kutta(f,T,y0,h)
    yf = y0;
    n = int16((T(2)-T(1))/h);
    t = T(1);
    for(i=1:n)
        k1 = f(t,yf);
        k2 = f(t+0.5*h,yf+0.5*k1*h);
        k3 = f(t+0.5*h,yf+0.5*k2*h);
        k4 = f(t+h,yf+k3*h);
        yf = yf+(1/6)*h*(k1+2*k2+2*k3+k4);
        t = t+h;
    end
end