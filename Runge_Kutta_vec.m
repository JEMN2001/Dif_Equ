function zf = Runge_Kutta_vec(f,t,z0,h)
    %f es la función que define el campo vectorial
    %t es un vector de 2 elementos, siendo la primera entrada el valor
    %inicial y la segunda entrada el valor al que quiero llegar
    %z0 es un vector con los valores iniciales de a funciones, es decir
    %todas las funciones evaluadas en t(1)
    %h es el tamaño de paso que quiero dar por iteración.
    zf = z0; %Inicializo zf
    n = int8((t(2)-t(1))/h); %Defino cuantas iteraciones tengo que hacer. (Lo de int8 no le presten atención)
    for i=1:n %Todos los k's son parte de runge kutta
        k1 = f(zf);
        k2 = f(zf+0.5*h*k1);
        k3 = f(zf+0.5*h*k2);
        k4 = f(zf+h*k3);
        zf = zf+(1/6)*h*(k1+2*k2+2*k3+k4); %Doy el paso de esta iteración
    end
    %Cuando acabe el for, zf será un vector con todas las funciones
    %evaluadas en el valor final, es decir t(2).
end