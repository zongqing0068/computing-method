function Y = ProducePoints2(f, X, n)
% �˺���ͨ�������ĺ���f��n+1�����ݵ����������X
% �õ��������ݵ������������Y
Y = 1:n+1;
for i = 1:n+1
    Y(i) = f(X(i));
end

