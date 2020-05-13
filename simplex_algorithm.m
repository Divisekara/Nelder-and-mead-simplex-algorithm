clc, clear
%clears

%% definning variables

X_0 = transpose([4 2 1]);  %Initial Point
a = 2;   %Simplex

[rows, columns] = size(X_0);     %equally space points
n= rows;

p = a / (n * sqrt(2)) * (sqrt(n+1) + n -1);
q = a / (n * sqrt(2)) * (sqrt(n+1) - 1);

I = eye(n);    %Identity Matrix

%% Calculation
vertices = [];

for i = 1:n
    X_i = X_0 + p * I(:,i);
    
    for j = 1:n
        if i~=j
            X_i = X_i + q * I(:,j);
        end
    end
    
    vertices = [vertices  X_i];
    
end

%% Outputs

answer = transpose(vertices);
scatter3(vertices(1,:),vertices(2,:),vertices(3,:),100,'r','filled')
answer
