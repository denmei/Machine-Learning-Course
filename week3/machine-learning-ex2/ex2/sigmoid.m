function g = sigmoid(z)
%SIGMOID Compute sigmoid function
%   g = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly
g = zeros(size(z));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).

sz = size(z);
l = sz(1,1);
w = sz(1,2);

for i = [1:1:l]
  for q = [1:1:w]
    z(i,q) = 1/(1+exp(-z(i, q)));
  end;
end;
g = z;


% =============================================================

end
