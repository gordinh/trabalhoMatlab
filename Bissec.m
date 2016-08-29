function raiz = Bissec(func, xa, xb, erroTolerance)
    %M�todo da Bissec��o (intervalar)
    %retorna a raiz estimada da fun��o
    %func = fun��o a ser calculada
    %xa = lado esquerdo do intervalo
    %xb = lado direito do intervalo
    %erroTolerance = tolerancia de erro/criterio de parada
    
    %Autor: Lucas Morais e Felipe Cordeiro
    
    %O QUE FALTA: PLOTAR NO GR�FICO || MOSTRAR RAIZ ESTIMADA POR ITERA��O
    %|| MOSTRAR ERRO DE ESTIMA��O || MOSTRAR ERRO VERDADEIRO 
    
    x = 0;
    iterador = 0;
    fa = func(xa); 
    error = 100;
    while error > erroTolerance
        xold = x; %salvando o valor antigo de x, para calculo do erro relativo
        x = (xa+xb) / 2; %calculando o valor de x sendo a m�dia dos extremos do intervalo
        iterador = iterador + 1;
        fx = F(x); %calculando f(x)
        signal = fa * fx;
        if signal > 0
            xa = x;
        elseif signal < 0
           xb = x;
        else
            %caso f(x) seja a raiz
            raiz = f(x);
        end
        error = abs((x-xold)/x);
    end
    
end
            
            
    