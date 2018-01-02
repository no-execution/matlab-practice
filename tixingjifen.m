b = 2;a = 0;
t = ((b-a)/2) * (f(a)+f(b));
n = 1;
count = 1;
while count < 20
    count = count+1;
    n = n*2;
    h = (b-a)/n;
    mid = 0;
    nodes = zeros(1,n+1);
    for i = 2:n+1
        nodes(i) = (i-1)*h + a;
    end
    for k = 1:n-1
        mid = mid + f((nodes(k)+nodes(k+1))/2);
        t = t/2 + ((b-a)/(2*n)) * mid;
    end
end
deviation = abs(t-122/105)