clc,clear

%% Intial definitions
X_0 = transpose([2 4]);  %Initial Point
a = 2;   %Initial Simplex size
iterations = 3;
f = @(x1,x2) 4*x1^2 + 2*x2^2 -x1*x2 - 40*x1 -10*x2;

%% execution

for k = 1:iterations
    
    next_points = reflecting(a,X_0)
    X_0 = next_points;
    
end


