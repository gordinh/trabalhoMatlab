function raiz = NewtonRaphson( Xo, erroTolerance)
    %Método NewtonRapshon (aberto)
    %retorna a raiz estimada da função
    %func = função a ser calculada
    %Xo = estimativa inicial
    %erroTolerance = tolerancia de erro/criterio de parada
    
    %Autor: Lucas Morais e Felipe Cordeiro
    
    %O QUE FALTA: PLOTAR NO GRÁFICO || MOSTRAR RAIZ ESTIMADA POR ITERAÇÃO
    %|| MOSTRAR ERRO DE ESTIMAÇÃO || MOSTRAR ERRO VERDADEIRO || Verificar
    %função
    
    function f = fun(x)
            f=x^3 - 6 * x^2 + 11 * x - 6.1;
    end
    function d = der(x)
            d = 3*x^2 - 12 * x + 11;
    end

    erro_abs = 100;
    iterador = 0;
    
    while (erro_abs > erroTolerance)
        iterador = iterador + 1; %iterador de controle
        disp ("iterador: "), disp (iterador)
        xold = Xo; %salvando valor antigo
        fx = fun(Xo); %calculando valor de f(Xn)
        fd = der(Xo); %calculando valor de f'(Xn)
        Xo = abs(xold - (fx/fd)); %calculando valor de Xn+1
        disp('Xo'), disp(Xo); 
        disp('fx'), disp(fx); 
        disp('fd'), disp(fd);
        erro_abs = abs((Xo-xold)/Xo)*100; %calculando erro relativo
        disp ("erro_abs:"), disp (erro_abs);
    end
    raiz = Xo;
end
