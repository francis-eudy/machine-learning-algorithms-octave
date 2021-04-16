function idx = findClosetCentrois(X, centroids)
    %
    %

    % Set K
    K = size(centrois, 1)

    idx = zeros(size(X,1),1);

    for i = 1:size(X,1)
        [_ idx(i)] = min(sum((-centroids + X(i, :)).^2, 2));
    end 
end
