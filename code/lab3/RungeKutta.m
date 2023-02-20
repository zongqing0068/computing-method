function RungeKutta(a, b, ya, N, f)
% �Ľ������������
% aΪ������˵㣬bΪ�����Ҷ˵㣬yaΪ��΢�ַ��̳�ֵ��
% (b-a)/NΪ������fΪy��x��΢��
x0 = a;
y0 = ya;
h = (b-a)/N;
fprintf('N=%dʱ:\n', N);
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

