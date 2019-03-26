function [tf, yf] = Euler_m(f,t0,y0,n,h)
    yf = [y0];
    tf = [t0];
    for(i=2:n-1)
        yf(i) = yf(i-1)+h*0.5*(f(tf(i-1),yf(i-1))+f(tf(i-1)+h,yf(i-1)+h*f(tf(i-1),yf(i-1))));
        tf(i) = tf(i-1)+h;
    end
end