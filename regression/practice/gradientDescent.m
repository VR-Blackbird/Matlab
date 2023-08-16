function theta = gradientDescent(X, Y, theta, learning_rate, m, iterations)
  J = 0;
  hold on;
  for i= 1:iterations
    h = hyp(X, Y, theta);
    slope = X' * ( h - Y);
    theta = theta - (learning_rate/m) * slope;
  end
