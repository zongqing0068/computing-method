function y = Lagrange(X, Y, n, x)
% �������ղ�ֵ����
% [X,Y]Ϊ��ֵ�ڵ����꣬��n+1����ֵ�㣬xΪ���������
% ����ֵyΪ�����Ľ���ֵ����
y = 0.0;
for k = 0:n
    l = 1.0;
    for j = 0:n
        if j==k
            continue;
        end
        l = l*(x-X(j+1))/(X(k+1)-X(j+1));
    end
    y = y + l*Y(k+1);
end

