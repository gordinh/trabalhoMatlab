function rotina()


       %primeira funcao
       f = [1 0 -1 -1];           
       xo = 1.5;
       errorTolerance = 0.01;
       xa = 1;
       xb = 3;
       realRootF1 = 1.3247;
       Bisseccao(f, xa, xb, errorTolerance, realRootF1, 1);
       NewtonRaphson(f, xo, errorTolerance, realRootF1, 4);
       
       %segunda funcao
       f = [1 0 -1 -2];
       xo = 1.5;
       errorTolerance = 0.01;
       xa = 1;
       xb = 2;
       realRootF2 = 1.5214;
       Bisseccao(f, xa, xb, errorTolerance, realRootF2, 2);
       NewtonRaphson(f, xo, errorTolerance, realRootF2, 5);
       
       
       %terceira funcao
       f = [1 0 3 -5];
       xo = 1.5;
       errorTolerance = 0.01;
       xa = 1;
       xb = 2;
       realRootF3 = 1.1542;
       Bisseccao(f, xa, xb, errorTolerance, realRootF3, 3);
       NewtonRaphson(f, xo, errorTolerance, realRootF3, 6);      

end 