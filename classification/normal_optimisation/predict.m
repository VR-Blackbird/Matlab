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

calculated_theta = [-24.425; 0.20034; 0.19551];

P = [1 34.62365962451697 78.0246928153624; 1 82.30705337399482 76.48196330235604; 1 60 70]
prediction = hypothesis(P, calculated_theta)

prediction = prediction >= 0.5;