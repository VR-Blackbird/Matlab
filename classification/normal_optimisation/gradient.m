function [J_hist, theta] = gradient(X, Y, theta, m, alpha, iterations)
  
  J_hist = zeros(iterations, 1);
  for i= 1: iterations
    h = hypothesis(X, theta);
    slope = X' * ( h - Y);
    theta = theta - (alpha/m) * slope;
    J_hist(i) = cost(X, Y, m, theta);
    
end
  