function Y = ProducePoints2(f, X, n)
% 此函数通过给定的函数f，n+1个数据点横坐标数组X
% 得到所有数据点的纵坐标数组Y
Y = 1:n+1;
for i = 1:n+1
    Y(i) = f(X(i));
end

