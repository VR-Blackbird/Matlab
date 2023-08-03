function J = cost(x, y, theta, total_observations)
    hyp = x * theta;
    J = sum((hyp - y).^2)/ (2 * total_observations); 
    
 end