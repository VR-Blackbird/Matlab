function p = predict(X, theta)
  
  m = size(X, 1);
  num_labels = 10;
  
  p = zeros(m, 1);
  
  new_x = [ones(m, 1) X];
  
  h = new_x * theta';
  
  [prob, p] = max(h, [], 2);
  
end