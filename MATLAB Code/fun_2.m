function [out2] = fun_2(r,a,b,w,c,d,t) %Live Phase plot 
h = 0.001;
ra = (r);
wo = (w);
curve = animatedline
for i = 1:(t/h)
    if ra(i) > 0 && wo(i) > 0
        ra(i+1) = ra(i)*(1 + h*(a - b*wo(i)));
        wo(i+1) = wo(i)*(1 + h*(c*ra(i) - d));
    else
        ra(i+1) = 0;
        wo(i+1) = 0;
    end

    title('Plot of population of Wolves vs population of Rabbits')
    xlabel('Population of Rabits')
    ylabel('Population of Wolves')
    set(gca,'XLim',[50 150],'YLim',[25 75]);
    grid on;
    addpoints(curve, ra(i), wo(i));
    drawnow limitrate

end
   