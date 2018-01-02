n = 300;
mat_a = zeros(n,n);
mat_a(1,1:2) = [6,1];
mat_a(n,n-1:n) = [8,6];
res = zeros(n,1);
res(1,1) = 7;
res(n,1) = 14;
p = eye(n);
for i = 2:n-1
    res(i,1) = 15;
end
for i = 2:n-1
    mat_a(i,i-1) = 8;
    mat_a(i,i) = 6;
    mat_a(i,i+1) = 1;
end
mat_b = mat_a;
for i = 1:n-1
    [m,index] = max(abs(mat_a(i:n,i)));   %½»»»iºÍindexĞĞ
    k = eye(n);
    if index>i
        k(index,index) = 0;
        k(i,i) = 0;
        k(i,index) = 1;
        k(index,i) = 1;
    end
    p = k*p;
    if index >i
        mid = mat_a(i,1:n);
        mat_a(i,1:n) = mat_a(index,1:n);
        mat_a(index,1:n) = mid;
    end
    mat_a(i+1:n,i) = mat_a(i+1:n,i)/mat_a(i,i);
    mat_a(i+1:n,i+1:n) = mat_a(i+1:n,i+1:n) - mat_a(i+1:n,i)*mat_a(i,i+1:n);
end
u = triu(mat_a);
l = tril(mat_a);
for i = 1:n
    l(i,i) = 1;
end
s = l*u-p*mat_b;
y = inv(l)*p*res;
x = inv(u)*y;
yu = res - mat_b*x