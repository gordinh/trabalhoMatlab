function raiz = NewtonRaphson(func, Xo, erroTolerance)
    x = Xo;
    error = 100;
    iterador = 0;
    
    df = diff(func);
    
    while error > erroTolerance
        xold = x; 
        fn = func(xold);
        phi = df(xold);
        x = abs(xold - fn/phi);
        iterador = iterador + 1;
        
        error = abs((x-xold)/x);
    end
    raiz = x;
end