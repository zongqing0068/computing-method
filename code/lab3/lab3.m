syms x;
syms y;

%问题1(1)
fprintf('问题1(1):\n');
%微分
f11 = @(x,y)x+y; 
%解析解
F11 = @(x)-x-1; 
%输出数值解
fprintf('数值解为\n');
RungeKutta(0, 1, -1, 5, f11);
RungeKutta(0, 1, -1, 10, f11);
RungeKutta(0, 1, -1, 20, f11);
%输出解析解
fprintf('解析解为\n');
GoldAnswer(0, 1, 5, F11);
GoldAnswer(0, 1, 10, F11);
GoldAnswer(0, 1, 20, F11);

%问题1(2)
fprintf('问题1(2):\n');
f12 = @(x,y)-y*y;
F12 = @(x)1/(x+1);
fprintf('数值解为\n');
RungeKutta(0, 1, 1, 5, f12);
RungeKutta(0, 1, 1, 10, f12);
RungeKutta(0, 1, 1, 20, f12);
fprintf('解析解为\n');
GoldAnswer(0, 1, 5, F12);
GoldAnswer(0, 1, 10, F12);
GoldAnswer(0, 1, 20, F12);

%问题2(1)
fprintf('问题2(1):\n');
f21 = @(x,y)2*y/x+x*x*exp(x);
F21 = @(x)x*x*(exp(x)-exp(1));
fprintf('数值解为\n');
RungeKutta(1, 3, 0, 5, f21);
RungeKutta(1, 3, 0, 10, f21);
RungeKutta(1, 3, 0, 20, f21);
fprintf('解析解为\n');
GoldAnswer(1, 3, 5, F21);
GoldAnswer(1, 3, 10, F21);
GoldAnswer(1, 3, 20, F21);

%问题2(2)
fprintf('问题2(2):\n');
f22 = @(x,y)(y*y+y)/x;
F22 = @(x)2*x/(1-2*x);
fprintf('数值解为\n');
RungeKutta(1, 3, -2, 5, f22);
RungeKutta(1, 3, -2, 10, f22);
RungeKutta(1, 3, -2, 20, f22);
fprintf('解析解为\n');
GoldAnswer(1, 3, 5, F22);
GoldAnswer(1, 3, 10, F22);
GoldAnswer(1, 3, 20, F22);

%问题3(1)
fprintf('问题3(1):\n');
f31 = @(x,y)-20*(y-x*x)+2*x;
F31 = @(x)x*x+exp(-20*x)/3;
fprintf('数值解为\n');
RungeKutta(0, 1, 1/3, 5, f31);
RungeKutta(0, 1, 1/3, 10, f31);
RungeKutta(0, 1, 1/3, 20, f31);
fprintf('解析解为\n');
GoldAnswer(0, 1, 5, F31);
GoldAnswer(0, 1, 10, F31);
GoldAnswer(0, 1, 20, F31);

%问题3(2)
fprintf('问题3(2):\n');
f32 = @(x,y)-20*y+20*sin(x)+cos(x);
F32 = @(x)exp(-20*x)+sin(x);
fprintf('数值解为\n');
RungeKutta(0, 1, 1, 5, f32);
RungeKutta(0, 1, 1, 10, f32);
RungeKutta(0, 1, 1, 20, f32);
fprintf('解析解为\n');
GoldAnswer(0, 1, 5, F32);
GoldAnswer(0, 1, 10, F32);
GoldAnswer(0, 1, 20, F32);

%问题3(3)
fprintf('问题3(3):\n');
f33 = @(x,y)-20*(y-exp(x)*sin(x))+exp(x)*(sin(x)+cos(x));
F33 = @(x)exp(x)*sin(x);
fprintf('数值解为\n');
RungeKutta(0, 1, 0, 5, f33);
RungeKutta(0, 1, 0, 10, f33);
RungeKutta(0, 1, 0, 20, f33);
fprintf('解析解为\n');
GoldAnswer(0, 1, 5, F33);
GoldAnswer(0, 1, 10, F33);
GoldAnswer(0, 1, 20, F33);