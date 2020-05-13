f = @(x1,x2) 1/7*sqrt(2500+x1.^2) + 1/4*sqrt(400+(x2-x1).^2)+ 1/2*sqrt(900+(100-x2).^2)
%vectorized variables
f(1,20) %example function executing
ezcontour(f, [0 100 0 100])
