function Gauss(n, A, b)
% ��˹����Ԫ��ȥ������
% nΪ���Է����������AΪϵ������bΪ�Ҷ���ϵ������
% ����ֵXΪ��õĽ��ƽ����
x = zeros(1, n);
for k = 1:n-1
    temp0 = abs(A(k, k));
    p = k;
    for j = k:n
        if abs(A(j, k)) > temp0
            temp0 = abs(A(j, k));
            p = j;
        end
    end
    if temp0 == 0
        disp('ϵ����������');
        return;
    end
    if p ~= k
        temp1 = A(p, 1:n);
        A(p, 1:n) = A(k, 1:n);
        A(k, 1:n) = temp1;
        temp2 = b(p);
        b(p) = b(k);
        b(k) = temp2;
    end
    for i = k+1:n
        m = A(i, k)/A(k, k);
        b(i) = b(i)-b(k)*m;
        for j = k+1:n
            A(i, j) = A(i, j)-A(k, j)*m;
        end
    end
    if A(n, n) == 0
        disp('ϵ����������');
        return;
    end
end
x(n) = b(n)/A(n, n);
k = n-1;
syms j;
while k > 0
    sum = 0;
    for j = k+1:n
        sum = sum+A(k, j)*x(j);
    end
    x(k) = (b(k)-sum)/A(k, k);
    k = k-1;
end
disp('�����Է�����Ľ�Ϊ:');
disp(x);
end
