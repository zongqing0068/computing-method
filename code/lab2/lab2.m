syms x;
% format long;
%����1(1)
fprintf('����1(1):\n');
f1(x) = @(x)x*x*exp(x);
Romberg(0, 1, 10.^(-6), f1);
%����1(2)
fprintf('����1(2):\n');
f1(x) = @(x)exp(x)*sin(x);
Romberg(1, 3, 10.^(-6), f1);
%����1(3)
fprintf('����1(3):\n');
f1(x) = @(x)4/(1+x*x);
Romberg(0, 1, 10.^(-6), f1);
%����1(4)
fprintf('����1(4):\n');
f1(x) = @(x)1/(x+1);
Romberg(0, 1, 10.^(-6), f1);