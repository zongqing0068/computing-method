function [X, Y] = ProducePoints1(f, a, b, n)
% 此函数通过给定的函数f，最小数据点横坐标a，最大数据点横坐标b
% 将区间n等分，得到所有数据点的坐标[X,Y]
X = a:(b-a)/n:b;
Y = 1:n+1;
for i = 1:n+1
    Y(i) = f(X(i));
end

