function [out5] = fun_5(r,a,b,w,c,d,t) %Demo Phase plots 

   figure(5)
   
   fun_1(50,0.18,0.004,30,0.001,0.1,200);
   hold on;
   fun_1(100,0.18,0.004,60,0.001,0.1,200);
   hold on;
   fun_1(150,0.18,0.004,90,0.001,0.1,200);
   title('Phase-Space plot of population of Wolves vs population of Rabbits')
   hold off;
