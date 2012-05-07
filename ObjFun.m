function f = ObjFun (clusters, data)

[dim, dimC] = size(clusters);
dimD = size(data,2);
if (dim ~= size(data,1))
  f = nan;
  return
end

f = 0;
for i = 1:dimD
  [minD, minI] = minDist(clusters, data(:,i));
  f = f + minD;
end

