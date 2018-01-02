format long
%{
x = 1;
y = (x^2+0.8)^(1/3);
count = 1;
while abs(y-x) > 0.0001
    x = y;
    y = (x^2+0.8)^(1/3);
    count  = count + 1;
end
count = count
pp = x^3-x^2-0.8
%}
%{
x = 1;
fi = (x^2+0.8)^(1/3);
y = x - ((fi-x)^2)/((fi^2+0.8)^(1/3) - 2*fi+x);
count = 1;
while abs(y-x) > 0.0001
    x = y;
    fi = (x^2+0.8)^(1/3);
    y = x - ((fi-x)^2)/((fi^2+0.8)^(1/3) - 2*fi+x);
    count = count + 1;
end
count = count
pp = x^3-x^2-0.8
%}
x = 1;
y = x - (x^3-x^2-0.8)/(3*x^2-2*x);
count = 1;
while abs(y-x) > 0.0001
    x = y;
    y = x - (x^3-x^2-0.8)/(3*x^2-2*x);
    count = count + 1;
end
count = count
pp = x^3-x^2-0.8