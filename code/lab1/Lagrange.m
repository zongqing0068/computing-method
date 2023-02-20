function y = Lagrange(X, Y, n, x)
% 拉格朗日插值函数
% [X,Y]为插值节点坐标，共n+1个插值点，x为待求点数组
% 返回值y为待求点的近似值数组
y = 0.0;
for k = 0:n
    l = 1.0;
    for j = 0:n
        if j==k
            continue;
        end
        l = l*(x-X(j+1))/(X(k+1)-X(j+1));
    end
    y = y + l*Y(k+1);
end

