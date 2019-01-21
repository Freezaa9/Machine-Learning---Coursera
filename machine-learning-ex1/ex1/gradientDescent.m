function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %

%sizeData = 1:size(X,1);

%j=1;
%for i = sizeData,
%  h=theta(1,1)+(theta(2,1)*X(i,2));
  %disp('h');
  %disp(h);
 % somme0(j,1)=h-y(i,1);
  %disp('somme');
  %disp(somme);
 % somme0(j,1)=somme0(j,1)*X(i,2);
 % j=j+1;
%end;
%disp('somme0');
%disp(somme0);
%theta = theta - ((alpha * (1/m)) * somme0);
    x = X(:,2);
    hypothese = theta(1) + (theta(2)*x);
    theta = [theta(1) - alpha * (1/m) * sum(hypothese-y); theta(2) - alpha * (1/m) * sum((hypothese - y) .* x)];
    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
