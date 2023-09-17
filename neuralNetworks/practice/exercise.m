load('ex3data1.mat');

total_labels = 10;

total_obs = size(X, 1);

random_indices = randperm(total_obs);

rand_observations = X(random_indices(1:100), :);

displayData(rand_observations);

fprintf("Press enter to continue\n");
pause;

fprintf("Test the working of sigmoid function\n");

test_val = 0;
test_op = sigmoid(test_val);

fprintf("Sigmoid for %d = %d\n", test_val, test_op);

fprintf("Press enter to continue\n");
pause;

alpha = 0.1;

all_theta = onevsall_train(X, y, 10, alpha);

fprintf("Press enter to continue\n");
pause;


fprintf("Prediction --- \n");
p = predict(X, all_theta);
