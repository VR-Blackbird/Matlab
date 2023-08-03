data = load('ex1data1.txt');

% Plot data

x = data(:, 1);
y = data(:, 2);
total = length(y);

plot(x, y, "gx");

% Add ones initially
x = [[ones(total, 1)] [x]];


theta = zeros(2, 1);

alpha = 0.01;
iterations = 1500;

% Just to view working of cost function
J = cost(x, y, theta, total);



% Perform gradient descent and calculate the value of theta

theta = gradientDescent(x, y, theta, alpha, total, iterations);
hold on;
plot(x(:, end), (x * theta), "r-");


% Predict random value
predict = 11;
y = [1 predict] * theta

plot(predict, y, "bs");