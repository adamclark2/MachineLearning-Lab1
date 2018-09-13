function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %







    % ============================================================

    m = length(X);
    tmpSum = 0;
    xTranspose = X';
    for i = 1:m
        h = theta' * X(i, :)'; % This could be X*theta or theta'*X' (See computeCost)

        % Note: the formula in the book calls for (X sub j super i)
        % this is the vector at i in X transpose
        tmpSum = tmpSum + (h - y(i)) * xTranspose(:, i);
    end

    % See formula in ex1.pdf page 6
    theta = theta - (alpha * 1/m) * tmpSum;

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);
end

end
