n = 300;
mat_a = zeros(n,n);
mat_a(1,1:2) = [6,1];
mat_a(n,n-1:n) = [8,6];
res = zeros(n,1);
res(1,1) = 7;
res(n,1) = 14;
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
    mat_a(i+1:n,i) = mat_a(i+1:n,i)/mat_a(i,i);
    mat_a(i+1:n,i+1:n) = mat_a(i+1:n,i+1:n) - mat_a(i+1:n,i)*mat_a(i,i+1:n);
end
l = tril(mat_a);
for i = 1:n
    l(i,i) = 1;
end
u = triu(mat_a);
y = inv(l)*res;
x = inv(u)*y;
res = res - mat_b * x

    
    
    
    
