function [X, Y] = ProducePoints1(f, a, b, n)
% �˺���ͨ�������ĺ���f����С���ݵ������a��������ݵ������b
% ������n�ȷ֣��õ��������ݵ������[X,Y]
X = a:(b-a)/n:b;
Y = 1:n+1;
for i = 1:n+1
    Y(i) = f(X(i));
end

