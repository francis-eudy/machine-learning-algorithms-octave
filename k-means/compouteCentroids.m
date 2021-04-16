function centroids = computeCentroids(X, idx, K)
    %
    %
    %

    [m n] = size(X);

    centroids = zeros(K, n);

    for k = 1:K
        foo = X(idx == k, :)
        centroids(k, :) = (1 / size(foo, 1)) * sum(foo);
    end 
end
