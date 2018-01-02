format long
n = 58;
b = 2;a = 0;
h = (b-a)/n;
nodes = zeros(1,n+1);
for i = 2:n+1
    nodes(i) = (i-1)*h + a;
end
res = 0;
for i = 1:n
    mid_a = nodes(i);
    mid_b = nodes(i+1);
    mid_m = (mid_a+mid_b)/2;
    res = res + ((mid_b-mid_a)/6) * (f(mid_a) + 4*f(mid_m) + f(mid_b));
end
deviation = abs(res - 122/105);
res = res
    