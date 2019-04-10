function yf = Euler_m(f,T,y0,h)
    yf = y0;
    t = T(1);
    n = int8((T(2)-T(1))/h);
    for(i=1:n)
        yf = yf+h*0.5*(f(t,yf)+f(t+h,yf+h*f(t,yf)));
        t = t+h;
    end
end