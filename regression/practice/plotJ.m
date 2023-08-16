function J_vals = plotJ(X, y, m) 

  theta0_vals = linspace(-10, 10, 100);
  theta1_vals = linspace(-1, 4, 100);

% initialize J_vals to a matrix of 0's
  J_vals = zeros(length(theta0_vals), length(theta1_vals));

% Fill out J_vals
  for i = 1:length(theta0_vals)
      for j = 1:length(theta1_vals)
	    t = [theta0_vals(i); theta1_vals(j)];
	    J_vals(i,j) = cost(X, y, m, t);
      end
  end
  J_vals = J_vals';
  figure;
  surf(theta0_vals, theta1_vals, J_vals);
end