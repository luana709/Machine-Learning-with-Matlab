function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%

%I create a variable theta0 with first element 0
theta0=theta;
theta0(1)=0;
%%% cost function : linear regression
h=(X*theta);

diff=h-y;

reg=lambda/(2*m)*(theta0(:)'*theta0(:));

J=1/2/m*diff(:)'*diff(:)+reg(:);

%%% regularised gradient

grad= 1/m*X'*diff + lambda/m*theta0;



% =========================================================================

grad = grad(:);

end
