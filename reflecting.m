function [next_points] = reflecting(a,X_0)
%finding the reflecting of the function
    simplex_points = simplex(a,X_0);
    %simplex_points
    maxi = 0;
    
    f = @(x1,x2) 4*x1^2 + 2*x2^2 -x1*x2 - 40*x1 -10*x2;
    
    [rows, columns] = size(X_0);     %equally space points
    n= rows

    for l=1:n
        x_1 = simplex_points(1,l);
        x_2 = simplex_points(2,l);
        current = f(x_1,x_2);
        if maxi==0
            maxi = current;
            x_h = transpose([x_1 x_2]);
            next_points = simplex_points(:,:);
            next_points(:,l) = [];
        end
        
        if maxi < current
            maxi = current;
            x_h = transpose([x_1 x_2]);
            next_points = simplex_points(:,:);
            next_points(:,l) = [];
        end
    end
    
    
    x_c = (sum(simplex_points,2)- x_h)/(n-1);
    
    x_new = x_c + (x_c - x_h);
    next_points = [next_points x_new];
    
    scatter(simplex_points(1,:),simplex_points(2,:),100,'r','filled')
end
