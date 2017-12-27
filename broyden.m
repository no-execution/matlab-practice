x0 = [1,1,1];
f_dao = zeros(3,3);
f_dao(1,:) = [12,-2*x0(2),-4];
f_dao(2,:) = [2*x0(1),10,-1];
f_dao(3,:) = [0,3*x0(2)^2,10];
f_han = [12*x0(1)-x0(2)^2-4*x0(3)-7,x0(1)^2+10*x0(2)-x0(3)-11,x0(2)^3+10*x0(3)-8]'
a0 = inv(f_dao);
delta_x = -a0*f_han;
x0 = x0 + delta_x';
count = 0;
while (max(abs(delta_x)) > 0.001)
    count = count + 1;
    f_dao(1,:) = [12,-2*x0(2),-4];
    f_dao(2,:) = [2*x0(1),10,-1];
    f_dao(3,:) = [0,3*x0(2)^2,10];
    new_f_han = [12*x0(1)-x0(2)^2-4*x0(3)-7,x0(1)^2+10*x0(2)-x0(3)-11,x0(2)^3+10*x0(3)-8]';
    g = new_f_han-f_han;  %列向量  第一次计算结束后是一个差值
    f_han = new_f_han;
    a0 = a0-(((a0*g-delta_x)*delta_x'*a0)/(delta_x'*a0*g));
    delta_x = -a0*f_han;
    x0 = x0 + delta_x';
end
x0 = x0
res = f_han
count = count