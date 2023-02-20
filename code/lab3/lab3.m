syms x;
syms y;

%����1(1)
fprintf('����1(1):\n');
%΢��
f11 = @(x,y)x+y; 
%������
F11 = @(x)-x-1; 
%�����ֵ��
fprintf('��ֵ��Ϊ\n');
RungeKutta(0, 1, -1, 5, f11);
RungeKutta(0, 1, -1, 10, f11);
RungeKutta(0, 1, -1, 20, f11);
%���������
fprintf('������Ϊ\n');
GoldAnswer(0, 1, 5, F11);
GoldAnswer(0, 1, 10, F11);
GoldAnswer(0, 1, 20, F11);

%����1(2)
fprintf('����1(2):\n');
f12 = @(x,y)-y*y;
F12 = @(x)1/(x+1);
fprintf('��ֵ��Ϊ\n');
RungeKutta(0, 1, 1, 5, f12);
RungeKutta(0, 1, 1, 10, f12);
RungeKutta(0, 1, 1, 20, f12);
fprintf('������Ϊ\n');
GoldAnswer(0, 1, 5, F12);
GoldAnswer(0, 1, 10, F12);
GoldAnswer(0, 1, 20, F12);

%����2(1)
fprintf('����2(1):\n');
f21 = @(x,y)2*y/x+x*x*exp(x);
F21 = @(x)x*x*(exp(x)-exp(1));
fprintf('��ֵ��Ϊ\n');
RungeKutta(1, 3, 0, 5, f21);
RungeKutta(1, 3, 0, 10, f21);
RungeKutta(1, 3, 0, 20, f21);
fprintf('������Ϊ\n');
GoldAnswer(1, 3, 5, F21);
GoldAnswer(1, 3, 10, F21);
GoldAnswer(1, 3, 20, F21);

%����2(2)
fprintf('����2(2):\n');
f22 = @(x,y)(y*y+y)/x;
F22 = @(x)2*x/(1-2*x);
fprintf('��ֵ��Ϊ\n');
RungeKutta(1, 3, -2, 5, f22);
RungeKutta(1, 3, -2, 10, f22);
RungeKutta(1, 3, -2, 20, f22);
fprintf('������Ϊ\n');
GoldAnswer(1, 3, 5, F22);
GoldAnswer(1, 3, 10, F22);
GoldAnswer(1, 3, 20, F22);

%����3(1)
fprintf('����3(1):\n');
f31 = @(x,y)-20*(y-x*x)+2*x;
F31 = @(x)x*x+exp(-20*x)/3;
fprintf('��ֵ��Ϊ\n');
RungeKutta(0, 1, 1/3, 5, f31);
RungeKutta(0, 1, 1/3, 10, f31);
RungeKutta(0, 1, 1/3, 20, f31);
fprintf('������Ϊ\n');
GoldAnswer(0, 1, 5, F31);
GoldAnswer(0, 1, 10, F31);
GoldAnswer(0, 1, 20, F31);

%����3(2)
fprintf('����3(2):\n');
f32 = @(x,y)-20*y+20*sin(x)+cos(x);
F32 = @(x)exp(-20*x)+sin(x);
fprintf('��ֵ��Ϊ\n');
RungeKutta(0, 1, 1, 5, f32);
RungeKutta(0, 1, 1, 10, f32);
RungeKutta(0, 1, 1, 20, f32);
fprintf('������Ϊ\n');
GoldAnswer(0, 1, 5, F32);
GoldAnswer(0, 1, 10, F32);
GoldAnswer(0, 1, 20, F32);

%����3(3)
fprintf('����3(3):\n');
f33 = @(x,y)-20*(y-exp(x)*sin(x))+exp(x)*(sin(x)+cos(x));
F33 = @(x)exp(x)*sin(x);
fprintf('��ֵ��Ϊ\n');
RungeKutta(0, 1, 0, 5, f33);
RungeKutta(0, 1, 0, 10, f33);
RungeKutta(0, 1, 0, 20, f33);
fprintf('������Ϊ\n');
GoldAnswer(0, 1, 5, F33);
GoldAnswer(0, 1, 10, F33);
GoldAnswer(0, 1, 20, F33);