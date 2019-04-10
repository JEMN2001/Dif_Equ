function yf = Euler(f,T,y0,h)
    yf = y0;
    t = T(1);
    n = int16((T(2)-T(1))/h);
    for(i=1:n)
        yf = yf+h*f(t,yf);
        t = t+h;
    end
end