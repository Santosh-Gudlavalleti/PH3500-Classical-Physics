function [out1] = fun_1(r,a,b,w,c,d,t) %Current Phase Plot
h = 0.001;
ra = (r);
wo = (w);

for i = 1:(t/h)
    if ra(i) > 1 && wo(i) > 1
        ra(i+1) = ra(i)*(1 + h*(a - b*wo(i)));
        wo(i+1) = wo(i)*(1 + h*(c*ra(i) - d));
    else
        ra(i+1) = 0;
        wo(i+1) = 0;
    end
end
   out1 = [ra wo];
   
   plot(ra, wo)
   title('Plot of population of Wolves vs population of Rabbits')
   xlabel('Population of Rabits')
   ylabel('Population of Wolves')
   grid on;
   legend({'Direction of flow: Anticlockwise'},'Location','northeast')
   hold on
     
    
