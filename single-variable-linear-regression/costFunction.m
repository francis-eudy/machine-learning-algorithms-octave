function J = costFunction(X, y, theta)
    % Computes the cost of using theta as the parameter for linear regression
    % to fit the data points in X and y
    %

    m = length(y); % number of training examples

    yhat = X * theta;
    J = sum((yhat - y).^2) / (2 * m);
end
