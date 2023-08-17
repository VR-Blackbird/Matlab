function [theta, J_hist] = gradientDescent(X, Y, theta, learning_rate, m, iterations)
  J_hist = zeros(1, iterations);
  for i= 1:iterations
    h = hyp(X, Y, theta);
    slope = X' * ( h - Y);
    theta = theta - (learning_rate/m) * slope;
    J_hist(i) = cost(X, Y, m, theta);
  end
