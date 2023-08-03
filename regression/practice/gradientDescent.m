function theta = gradientDescent(x, y, theta, alpha, total, iterations)
  
  for iter = 1:iterations
    
    hyp = x * theta;
    
    theta = theta - ((alpha/total) * (x' * (hyp - y)));
  end
  
  
end