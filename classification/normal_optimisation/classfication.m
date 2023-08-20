
%Initialise environment and clean up
clear ; close all; clc

%Fetch data and assign X and Y values
data = load("ex2data1.txt");

m = length(data);

X = [ones(m, 1) data(:, 1:2)];
Y = data(:, end);

% Plot data
x = data(:, 1:2);

positive_x1 = x(Y==1, 1); 
positive_x2 = x(Y==1, 2);

negative_x1 = x(Y==0, 1);
negative_x2 = x(Y==0, 2);

plot(positive_x1, positive_x2, "y+", "MarkerEdgeColor", "k", 'LineWidth', 2, "MarkerSize", 10);
hold on;
plot(negative_x1, negative_x2, "bo", "MarkerFaceColor", "r",  "MarkerSize", 7);


% Start predicting
initial_theta = zeros(3, 1);

expected_theta = [-25.161; 0.20623; 0.20147];

iterations = 8200500;
learning_rate = 0.001;


[J_hist, theta] = gradient(X, Y, initial_theta, m, learning_rate, iterations);
J_hist = J_hist(!isnan(J_hist), :);

hold off;
plot(1:iterations, J_hist, 'r-');