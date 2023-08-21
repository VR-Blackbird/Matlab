function J = cost(X, Y, m, theta)
  
  h = hypothesis(X, theta);
  positive = Y' * log(h);
  negative = (1 - Y)' * log(1 - h);
  
  J = (-1/m) * (positive + negative);
  
end