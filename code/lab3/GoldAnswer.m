function GoldAnswer(a, b, N, f)
% ��������⣬����ʵֵ
% aΪ������˵㣬bΪ�����Ҷ˵㣬(b-a)/NΪ������fΪ������
x = a;
h = (b-a)/N;
fprintf('N=%dʱ:\n', N);
for n = 1:N
    x = x+h;
    fprintf('(%.8f, %.8f)\n', x, f(x));
end
fprintf('\n');
end

