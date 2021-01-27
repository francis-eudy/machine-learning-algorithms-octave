%% Basic Single Variable Linear Regression Demo

% load data
data = load('data.txt');
X = data(:, 1); 
y = data(:, 2);
m = length(y); % number of data instances

%% Gradient Descent

% add in the bias variable
X = [ones(m, 1), X];
% initialize parameters
theta = zeros(2, 1); 

% gradient descent settings
iterations = 1500;
alpha = 0.01;

fprintf('\nRunning Gradient Descent ... \n');
% run gradient descent 
theta = gradientDescent(X, y, theta, alpha, iterations);

% print theta parameters
fprintf('Theta parameters:\n');
fprintf('%f\n', theta);

