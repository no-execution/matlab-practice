
h = 0.1;
x = 0:h:1;
a = 0;b=1;
y = ones(1,(b-a)/h+1);deviation = zeros(1,(b-a)/h+1);
for i = 1:(b-a)/h
    yp = y(i) + h*(y(i) - 2*x(i)/y(i));
    yc = y(i) + h*(yp - 2*x(i+1)/yp);
    y(i+1) = (yp + yc)/2;
    deviation(i+1) = abs((1+2*x(i+1))^0.5 - y(i+1));
end
y = y'
deviation = deviation'
