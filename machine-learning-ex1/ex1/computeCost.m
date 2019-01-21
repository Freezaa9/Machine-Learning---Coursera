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

sizeData = 1:size(X,1);
somme=0;
h=0;
for i = sizeData,
  h=theta(1,1)+theta(2,1)*X(i,2);

  somme+=((h-y(i,1)).^2);
  

end;
disp((1/(2*m))*somme);
J=(1/(2*m))*somme;


% =========================================================================

end
