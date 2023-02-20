syms t;
f1(t) = 1/(1+t*t);
f2(t) = exp(t);
f4(t) = sqrt(t);

%问题1(1)
fprintf('问题1(1):\n');
x11 = [0.75, 1.75, 2.75, 3.75, 4.75];

fprintf('n=5时:\n');
[X111, Y111] = ProducePoints1(f1, -5, 5, 5);
for i = 1:5
%     fprintf('f(x)在点%f的真实值为%f\n', x11(i), f1(x11(i)));
    fprintf('f(x)在点%f的近似值为%f\n', x11(i), Lagrange(X111, Y111, 5, x11(i)));
end

fprintf('n=10时:\n');
[X112, Y112] = ProducePoints1(f1, -5, 5, 10);
for i = 1:5
    fprintf('f(x)在点%f的近似值为%f\n', x11(i), Lagrange(X112, Y112, 10, x11(i)));
end

fprintf('n=20时:\n');
[X113, Y113] = ProducePoints1(f1, -5, 5, 20);
for i = 1:5
    fprintf('f(x)在点%f的近似值为%f\n', x11(i), Lagrange(X113, Y113, 20, x11(i)));
end

%问题1(2)
fprintf('问题1(2):\n');
x12 = [-0.95,-0.05, 0.05, 0.95];

fprintf('n=5时:\n');
[X121, Y121] = ProducePoints1(f2, -1, 1, 5);
for i = 1:4
%     fprintf('f(x)在插值点%f的真实值为%f\n', x12(i), f2(x12(i)));
    fprintf('f(x)在点%f的近似值为%f\n', x12(i), Lagrange(X121, Y121, 5, x12(i)));
end

fprintf('n=10时:\n');
[X122, Y122] = ProducePoints1(f2, -1, 1, 10);
for i = 1:4
    fprintf('f(x)在点%f的近似值为%f\n', x12(i), Lagrange(X122, Y122, 10, x12(i)));
end

fprintf('n=20时:\n');
[X123, Y123] = ProducePoints1(f2, -1, 1, 20);
for i = 1:4
    fprintf('f(x)在点%f的近似值为%f\n', x12(i), Lagrange(X123, Y123, 20, x12(i)));
end

%问题2(1)
fprintf('问题2(1):\n');
x21 = [-0.95,-0.05, 0.05, 0.95];

fprintf('n=5时:\n');
[X211, Y211] = ProducePoints1(f1, -1, 1, 5);
for i = 1:4
%     fprintf('f(x)在点%f的真实值为%f\n', x21(i), f1(x21(i)));
    fprintf('f(x)在点%f的近似值为%f\n', x21(i), Lagrange(X211, Y211, 5, x21(i)));
end

fprintf('n=10时:\n');
[X212, Y212] = ProducePoints1(f1, -1, 1, 10);
for i = 1:4
    fprintf('f(x)在点%f的近似值为%f\n', x21(i), Lagrange(X212, Y212, 10, x21(i)));
end

fprintf('n=20时:\n');
[X213, Y213] = ProducePoints1(f1, -1, 1, 20);
for i = 1:4
    fprintf('f(x)在点%f的近似值为%f\n', x21(i), Lagrange(X213, Y213, 20, x21(i)));
end


%问题2(2)
fprintf('问题2(2):\n');
x22 = [-4.75, -0.25, 0.25, 4.75];

fprintf('n=5时:\n');
[X221, Y221] = ProducePoints1(f2, -5, 5, 5);
for i = 1:4
%     fprintf('f(x)在点%f的真实值为%f\n', x22(i), f2(x22(i)));
    fprintf('f(x)在点%f的近似值为%f\n', x22(i), Lagrange(X221, Y221, 5, x22(i)));
end

fprintf('n=10时:\n');
[X222, Y222] = ProducePoints1(f2, -5, 5, 10);
for i = 1:4
    fprintf('f(x)在点%f的近似值为%f\n', x22(i), Lagrange(X222, Y222, 10, x22(i)));
end

fprintf('n=20时:\n');
[X223, Y223] = ProducePoints1(f2, -5, 5, 20);
for i = 1:4
    fprintf('f(x)在点%f的近似值为%f\n', x22(i), Lagrange(X223, Y223, 20, x22(i)));
end

%问题4(1)
x4 = [5, 50, 115, 185];

fprintf('问题4(1):\n');
X41 = [1, 4, 9];
Y41 = ProducePoints2(f4, X41, 2);
for i = 1:4
%     fprintf('f(x)在点%f的真实值为%f\n', x4(i), f4(x4(i)));
    fprintf('f(x)在点%f的近似值为%f\n', x4(i), Lagrange(X41, Y41, 2, x4(i)));
end

%问题4(2)
fprintf('问题4(2):\n');
X42 = [36, 49, 64];
Y42 = ProducePoints2(f4, X42, 2);
for i = 1:4
    fprintf('f(x)在点%f的近似值为%f\n', x4(i), Lagrange(X42, Y42, 2, x4(i)));
end

%问题4(3)
fprintf('问题4(3):\n');
X43 = [100, 121, 144];
Y43 = ProducePoints2(f4, X43, 2);
for i = 1:4
    fprintf('f(x)在点%f的近似值为%f\n', x4(i), Lagrange(X43, Y43, 2, x4(i)));
end

%问题4(4)
fprintf('问题4(4):\n');
X44 = [169, 196, 225];
Y44 = ProducePoints2(f4, X44, 2);
for i = 1:4
    fprintf('f(x)在点%f的近似值为%f\n', x4(i), Lagrange(X44, Y44, 2, x4(i)));
end


