% Project    : Dynamics of First order Nonlinear Differential Equations
% Instructor : Prof. S. Kasiviswanathan
% Course     : Classical Physics (PH3500)
% Project By : Santosh Gudlavalleti
% Roll Number: EE19B055

clc, clear

disp('Welcome to the Display, Please choose an option');
disp('Option 1: The Final Plots will be displayed with demo Inputs');
disp('Option 2: The Live Phase Space Plots will be displayed with demo Inputs, (Quite Slow)');
disp('Option 3: The Final Plots will be displayed with demo Inputs of population and disease factor');
disp('Option 4: The Final Plots will be displayed with Custom Inputs');

s = input('Option: ');

if s == 1
    disp('The Final Plots will be displayed with Initial Rabbit Population as 100 and Wolf Population as 60');
    disp('Please Wait while the Graph is being Made');
    disp('Use Function: "main" to re-run the program');
    figure(1)
    fun_1(100,0.18,0.004,60,0.001,0.1,200);
    fun_3(100,0.18,0.004,60,0.001,0.1,200);
    fun_5(100,0.18,0.004,60,0.001,0.1,200);
    
end

if s == 2
    disp ('The Live Phase Space Plots will be displayed with Initial Rabbit Population as 100 and Wolf Population as 60');
    disp ('Please Wait while the Graph is complete(Takes Time)');
    pause(2.0);
    fun_2(100,0.18,0.004,60,0.001,0.1,200);
end


if s == 3
    disp('The Final Plots will be displayed with Initial Rabbit Population as 100 and Wolf Population as 60');
    disp('The rabbits are affected by a disease after they reach 300 i.e ~85% of the max Population');
    disp('Please Wait while the Graph is being Made');
    disp('Use Function: "main" to re-run the program')
    fun_4(100,0.18,0.004,60,0.001,0.1,200,0.008);
end

if s == 4
    disp('Please enter the Custom Inputs')
    r = input('Enter Initial Rabbit Population (preferred 75-150): ');
    w = input('Enter Initial Wolf Population (preferred 50-75): ');
    t = input('Enter Time Duration (preferred >50): ');
    a = input('Enter growth rate of Rabbit(a) (preferred 0.15-0.20): '); 
    b = input('Enter death rate of Rabbit(b) (preferred 0.0025-0.0075): ');    
    c = input('Enter growth rate of Wolves(c) (preferred 0.0005-0.003): ');
    d = input('Enter death rate of Wolves(d) (preferred 0.05-0.25): ');
    
    fun_1(r,a,b,w,c,d,t);
end

if  isempty(s) || s~=1 && s~=2 && s~=3 && s~=4
    disp ('Enter A valid Option')

end
