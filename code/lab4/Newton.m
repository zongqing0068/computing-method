function [] = Newton(x0, e1, e2, N, f)
% ţ�ٲ�ֵ����
% x0Ϊ��ֵ��e1, e2Ϊ���ȣ�NΪ������������fΪ���������Է���
n = 1;
df = diff(f);
while n <= N
    F = double(f(x0));
    DF = double(df(x0));
    if abs(F) < e1
        fprintf('����f(x)=0��x*�Ľ���ֵΪ:%.8f\n', x0);
        return;
    end
    if abs(DF) < e2
        fprintf('����ʧ��\n');
        return;
    end
    x1 = double(x0-F/DF);
    Tol = abs(x1-x0);
    if Tol < e1
        fprintf('����f(x)=0��x*�Ľ���ֵΪ:%.8f\n', x1);
        return;
    end
    n = n+1;
    x0 = x1;
end
fprintf('����ʧ��\n');
return;