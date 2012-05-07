m = 3;
data = [0 0.1 0.2 2 2.2 3 3.1 3.2 3.3 3.4 3.5];

Index = unique(randint(1,m,[1,size(data,2)]));
while (length(Index) < m)
  Index = unique(randint(1,m,[1,size(data,2)]));
end
[means, fval] = fminsearch (@(c) ObjFun(c, data), data(:,Index))

