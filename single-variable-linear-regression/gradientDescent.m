function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
    % Performs gradient descent in order to learn theta
    %
    % 

    m = length(y); % number of training examples
    J_history = zeros(num_iters, 1);

    for iter = 1:num_iters
        yhat = X * theta;
        theta_1 = theta(1) - alpha * (1/m) * sum(yhat - y);
        theta_2 = theta(2) - alpha * (1/m) * sum((yhat - y) .* X(:, 2));
        theta = [theta_1; theta_2];

        J_history(iter) = costFunction(X, y, theta);
    end
end
