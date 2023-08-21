function h = hypothesis(X, theta)
  
  
  linear_hypothesis = X * theta;
  exponent = e.^(-linear_hypothesis);
  h = 1./(1+ exponent);
  
end