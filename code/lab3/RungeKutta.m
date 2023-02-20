function RungeKutta(a, b, ya, N, f)
% 四阶龙格库塔函数
% a为区间左端点，b为区间右端点，ya为常微分方程初值，
% (b-a)/N为步长，f为y对x的微分
x0 = a;
y0 = ya;
h = (b-a)/N;
fprintf('N=%d时:\n', N);
for n = 1:N
    k1 = double(h*f(x0, y0));
    k2 = double(h*f(x0+h/2, y0+k1/2));
    k3 = double(h*f(x0+h/2, y0+k2/2));
    k4 = double(h*f(x0+h, y0+k3));
    x1 = x0+h;
    y1 = y0+(k1+2*k2+2*k3+k4)/6;
    fprintf('(%.8f, %.8f)\n', x1, y1);
    x0 = x1;
    y0 = y1;
end
fprintf('\n');
end

