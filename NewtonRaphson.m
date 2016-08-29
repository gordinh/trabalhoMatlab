function raiz = NewtonRaphson(func, Xo, erroTolerance)
    %Método NewtonRapshon (aberto)
    %retorna a raiz estimada da função
    %func = função a ser calculada
    %Xo = estimativa inicial
    %erroTolerance = tolerancia de erro/criterio de parada
    
    %Autor: Lucas Morais e Felipe Cordeiro
    
    %O QUE FALTA: PLOTAR NO GRÁFICO || MOSTRAR RAIZ ESTIMADA POR ITERAÇÃO
    %|| MOSTRAR ERRO DE ESTIMAÇÃO || MOSTRAR ERRO VERDADEIRO || Verificar
    %função
    

    x = Xo;
    error = 100;
    iterador = 0;
    
    df = diff(func);
    
    while error > erroTolerance
        xold = x; %salvando valor antigo
        fn = func(xold); %calculando valor de f(Xn)
        phi = df(xold); %calculando valor de f'(Xn)
        x = abs(xold - fn/phi); %calculando valor de Xn+1
        iterador = iterador + 1; %iterador de controle
        
        error = abs((x-xold)/x); %calculando erro relativo
    end
    raiz = x;
end