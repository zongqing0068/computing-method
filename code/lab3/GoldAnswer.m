function GoldAnswer(a, b, N, f)
% 输出解析解，即真实值
% a为区间左端点，b为区间右端点，(b-a)/N为步长，f为解析解
x = a;
h = (b-a)/N;
fprintf('N=%d时:\n', N);
for n = 1:N
    x = x+h;
    fprintf('(%.8f, %.8f)\n', x, f(x));
end
fprintf('\n');
end

