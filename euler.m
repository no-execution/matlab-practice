
h = 0.1;
x = 0:h:1;
a = 0;b=1;
y = ones(1,(b-a)/h+1);deviation = zeros(1,(b-a)/h+1);
for i = 1:((b-a)/h)
    y(i+1) = y(i) + h*f(x(i),y(i));
    deviation(i+1) = (1+2*x(i+1))^0.5;
end
y = y'
deviation = deviation'

