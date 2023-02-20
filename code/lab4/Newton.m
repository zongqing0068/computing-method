function [] = Newton(x0, e1, e2, N, f)
% 牛顿插值函数
% x0为初值，e1, e2为精度，N为最大迭代次数，f为待求解非线性方程
n = 1;
df = diff(f);
while n <= N
    F = double(f(x0));
    DF = double(df(x0));
    if abs(F) < e1
        fprintf('方程f(x)=0根x*的近似值为:%.8f\n', x0);
        return;
    end
    if abs(DF) < e2
        fprintf('计算失败\n');
        return;
    end
    x1 = double(x0-F/DF);
    Tol = abs(x1-x0);
    if Tol < e1
        fprintf('方程f(x)=0根x*的近似值为:%.8f\n', x1);
        return;
    end
    n = n+1;
    x0 = x1;
end
fprintf('计算失败\n');
return;