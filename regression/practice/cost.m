function J = cost(X, Y, total_observations, theta)
  
  
  h = hyp(X, Y, theta);
  squared_difference = (h - Y) .^ 2;
  J = (1/(2*total_observations)) * sum(squared_difference);
  
end