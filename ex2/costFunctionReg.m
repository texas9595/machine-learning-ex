function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples
M=length(theta);
% You need to return the following variables correctly 

grad = zeros(size(theta));
H=sigmoid(X*theta);
oneM=ones(m,1);
% ===================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
J=((1/m)*sum(-y.*log(H)-(oneM-y).*log(oneM-H)))+(lambda/(2*m))*sum(theta(2:M).^2);

grad(1)=(1/m)*sum((H-y).*X(:,1));

for a=2:M
    grad(a)=(1/m)*sum((H-y).*X(:,a))+(lambda/m)*theta(a);

    


end

% =============================================================

