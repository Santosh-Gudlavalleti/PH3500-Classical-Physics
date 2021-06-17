function [out3] = fun_3(r,a,b,w,c,d,t)  %Variation with Time

h = 0.001;
ra = (r);
wo = (w);

for i = 1:(t/h)
    if ra(i) > 0 && wo(i) > 0
        ra(i+1) = ra(i)*(1 + h*(a - b*wo(i)));
        wo(i+1) = wo(i)*(1 + h*(c*ra(i) - d));
    else
        ra(i+1) = 0;
        wo(i+1) = 0;
    end
end
   figure(3)
   plot(0:t/h,ra)
   hold on
   plot (0:t/h,wo)
   title('Plots of population of Wolves vs Time and Population of Rabbits vs Time')
   xlabel('Time (in days)')
   ylabel('Population')
   legend({'y = Rabbits Count', 'y = Wolves Count'},'Location','northeast')
   set(gca,'XTickLabel',(0:(t/10):t));
   
   hold off 
