%f = @(x1,x2) 1/7*sqrt(2500+x1.^2) + 1/4*sqrt(400+(x2-x1).^2)+ 1/2*sqrt(900+(100-x2).^2)
%vectorized variables

%f = @(x) 1/7*sqrt(2500+x(1)^2) + 1/4*sqrt(400+(x(2)-x(1))^2)+ 1/2*sqrt(900+(100-x(2))^2)

f = @(x) 4*x(1)^2 + 2*x(2)^2 -x(1)*x(2) - 40*x(1) -10*x(2);

fminsearch(f, [2 4])