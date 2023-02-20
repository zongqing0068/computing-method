function Romberg(a, b, e, f)
% 龙贝格积分函数
% a为积分下限，b为积分上限，e为精度，f为被积函数
format long;
syms h;
h = b-a;
T = zeros(10000, 10000);
syms k;
T(1, 1) = h*(f(a)+f(b))/2;
% disp(['T1=',num2str(T(1, 1))]);
for i = 1:10000
    ii = 2^(i-1);
    F = @(k)f(a+(k-1/2)*h);
    T(1, i+1) = double(T(1, i)/2+(h*symsum(F, k, 1, ii))/2);
    for m = 1:i
        j = i-m;
        T(m+1, j+1) = double(((4^m)*T(m, j+2)-T(m, j+1))/(4^m-1));
    end
    if abs(T(i+1, 1)-T(i, 1)) < e
        disp('积分值为：');
        disp(T(i+1, 1));
        disp('龙贝格T-数表为：');
        disp(T(1:(i+1), 1:(i+1)));
        break;
    end
    h = h/2;
end
end

