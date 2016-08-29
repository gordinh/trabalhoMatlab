function raiz = Bisseccao(xa, xb, erroTolerance)
    %Metodo da Bisseccao (intervalar)
    %retorna a raiz estimada da função
    %func = função a ser calculada
    %xa = lado esquerdo do intervalo
    %xb = lado direito do intervalo
    %erroTolerance = tolerancia de erro/criterio de parada em porcentagem
    
    %Autor: Lucas Morais e Felipe Cordeiro
    
    %O QUE FALTA: PLOTAR NO GRAFICO || MOSTRAR RAIZ ESTIMADA POR ITERACAO
    %|| MOSTRAR ERRO DE ESTIMACAO || MOSTRAR ERRO VERDADEIRO 
    %% functionname: function description
    function f = fun(x)
            %f = (x + 1)^2 * e^(x - 2) - 1;
            f = (-2.75*x^3)+(18*x^2)-(21*x)-(12);
    end

    
    x = 0;
    iterador = 0;
    fa = fun(xa); 
   	fb = fun(xb);
    raiz = 0;
    erro_abs = 100;
    while (erro_abs > erroTolerance)
        xold = x; %salvando o valor antigo de x, para calculo do erro relativo
        x = (xa+xb) / 2; %calculando o valor de x sendo a media dos extremos do intervalo
        
        
        fx = fun(x);  %calculando f(x)
        disp ('The value of Xi is:'), disp (x)
        disp ('The value of fx is:'), disp (fx)
        signal = fa * fx;
        disp ('xa: '), disp (xa)
        disp ('fa: '), disp (fa)
        disp ('xb: '), disp (xb)
        disp ('fb: '), disp (fb)
        if (signal > 0)
            xa = x;
            fa = fx;
        elseif (signal < 0)
           xb = x;
           fb = fx;           
        else
            %caso x seja a raiz
            disp ('fim')
            raiz = x;
            return;
        end
        erro_abs = abs((x-xold)/x)*100;
        disp ('iteracao: '), disp (iterador)
        disp ('raiz_estimada: '), disp(x)
        disp ('erro_abs: '), disp (erro_abs)
        iterador = iterador + 1;
    end
    disp ('iteracoes_maximas: '), disp (iterador)
    raiz = x;
    disp ('raiz_estimada: '), disp (raiz)
end
            
            
    
