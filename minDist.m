function [minD, minI] = minDist(clusters, point)

[dim, numC] = size(clusters);

minD = inf;
minI = 0;
for i = 1:numC
  dist = norm(clusters(:,i) - point);
  if (dist < minD)
    minD = dist;
    minI = i;
  end
end

