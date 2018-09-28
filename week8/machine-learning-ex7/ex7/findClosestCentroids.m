function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%

n = size(X,1);
for q=1:n
  index = 0;
  for i=1:K
    new_min = sum(abs(centroids(i,:) - X(q,:)).^2);
    if(i == 1)
      mini = new_min;
      index = i;
    else if (mini > new_min)
      mini = new_min;
      index = i;
    end
  end
  idx(q,1) = index;
end




% =============================================================

end
