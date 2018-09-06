function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.





% =========================================================================

# J(theta) := (1/2m) (SUM(   (h(x(i)) - y(i))^2   ) from i to m)
# h is a line (y=mx+b) in the form h = theta[0] + theta[1]x
# h is also theta^T x

    tmpSum = 0;
    m = length(X);
    for i = 1:m
        # As input, theta is a row vector and X is a column vector.
        # We would like theta to be a column vector and X to be a row vector
        # So each is transposed...
        h = theta' * X(i, :)';

        tmpSum = tmpSum + (h - y(i))^2;
    endfor

    J = (1/(2*m)) * tmpSum;
end
