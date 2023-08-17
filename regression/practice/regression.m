data = load("ex1data1.txt");

X = data(:, 1);
Y = data(:, 2);


plot(X, Y, 'r x');
hold on;
one = ones(length(Y), 1);

X = [one X];

initial_theta = zeros(2, 1);
learning_rate = 0.01;
m = length(X);

n = 1600;

[theta, J_hist] = gradientDescent(X, Y, initial_theta, learning_rate, m, n);

plot(X(:, 2), hyp(X, Y, theta), "b-");
hold off;
vals = plotJ(X, Y, m);

plot(1:n, J_hist);