function [vertices] = simplex(a, X_0)
%finding the simplex of the function

[rows, columns] = size(X_0);     %equally space points
n= rows;

p = a / (n * sqrt(2)) * (sqrt(n+1) + n -1);
q = a / (n * sqrt(2)) * (sqrt(n+1) - 1);

I = eye(n);

vertices = [];

for i = 1:n
    X_i = X_0 + p * I(:,i);
    
    for j = 1:n
        if i~=j
            X_i = X_i + q * I(:,j);
        end
    end
    vertices = [vertices X_i];
    %X_i;
end
end


