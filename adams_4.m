
h = 0.1;
x = 0:h:1;
a = 0;b=1;
y = ones(1,(b-a)/h+1);deviation = zeros(1,(b-a)/h+1);
y(1,1:4) = [1,1.0954,1.1832,1.2649];
for i = 4:(b-a)/h
    mid = y(i) + h/24*(55*f(x(i),y(i)) - 59*f(x(i-1),y(i-1)) + 37*f(x(i-2),y(i-2)) - 9*f(x(i-3),y(i-3)));
    y(i+1) = y(i) + h/24*(9*f(x(i+1),mid) + 19*f(x(i),y(i)) - 5*f(x(i-1),y(i-1)) + f(x(i-2),y(i-2)));
    deviation(i+1) = abs((1+2*x(i+1))^0.5 - y(i+1));
end
y = y'
deviation = deviation'