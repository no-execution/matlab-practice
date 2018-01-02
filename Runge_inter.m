clear,clc
fplot(@(x)1./(1+25.*x.*x),[-1.,1.,-0.5,2])
hold on
pause
x_11=-1:0.2:1;
for i=1:11
    y_11(i)=1/(1+25*x_11(i).^2); 
end
plot(x_11,y_11,'r*')
pause
hold off
fplot('0',[-1.,1.,-0.5,2])
hold on
plot(x_11,y_11,'r*')
plot(x_11*0,x_11,'b-')
pause
xx_11=-1:0.01:1;
yy_11=lag_fun(x_11,y_11,xx_11);
plot(xx_11,yy_11,'k-')
pause
x_21=-1:0.1:1;
for i=1:21
    y_21(i)=1/(1+25*x_21(i).^2);
end
hold off
fplot('1./(1+25.*x.*x)',[-1.,1.,-0.5,2])
hold on
plot(x_11*0,x_11,'b-')
fplot('0',[-1.,1.,-0.5,2])
plot(x_21,y_21,'m*')
pause
hold off
plot(x_21*0,x_21,'b-')
hold on
fplot('0',[-1.,1.,-0.5,2])
plot(x_21,y_21,'m*')
xx_21=-1:0.01:1;
yy_21=lag_fun(x_21,y_21,xx_21);
plot(xx_21,yy_21,'m-')
plot(xx_11,yy_11,'k-')
plot(x_11,y_11,'rO')
pause
hold off
fplot('1./(1+25.*x.*x)',[-1.,1.,-0.5,2])
hold on
x_51=-1:0.04:1;
for i=1:51
    y_51(i)=1/(1+25*x_51(i).^2);
end
plot(x_51,y_51,'r*')
pause
hold off
fplot('0',[-1.,1.,-0.5,2])
hold on
plot(x_51*0,x_51,'b-')
plot(x_11,y_11,'rO')
plot(x_21,y_21,'kS')
plot(xx_11,yy_11,'r-')
plot(xx_21,yy_21,'k-')
xx_51=-1:0.01:1;
yy_51=lag_fun(x_51,y_51,xx_51);
plot(x_51,y_51,'m*')
plot(xx_51,yy_51,'m-')
pause
hold off
fplot('0',[-1.,1.,-0.5,2])
hold on
plot(x_51*0,x_51,'b-')
plot(x_51,y_51,'r*')
for i=1:50
    k=(y_51(i+1)-y_51(i))./(x_51(i+1)-x_51(i));
    zz=x_51(i):0.001:x_51(i+1);
    uu=y_51(i)+k.*(zz-x_51(i));
    plot(zz,uu)
end
pause
hold off
fplot('0',[-1.,1.,-0.5,2])
hold on
plot(x_51*0,x_51,'b-')
plot(x_11,y_11,'bO')
zz_11=spline(x_11,y_11,xx_11);
plot(xx_11,zz_11,'m+')
fplot('1./(1+25.*x.*x)',[-1.,1.,-0.5,2])
pause
for i=0:10
    u_11(i+1)=cos((2*i+1)/22*pi);
end
for i=0:10
    v_11(i+1)=1/(1+25*u_11(i+1).^2);
end
ww_11=lag_fun(u_11,v_11,xx_11);
plot(u_11,v_11,'k*',xx_11,ww_11,'r+')
pause
for i=0:50
    u_51(i+1)=cos((2*i+1)/102*pi);
end
for i=0:50
    v_51(i+1)=1/(1+25*u_51(i+1).^2);
end
ww_51=lag_fun(u_51,v_51,xx_51);
plot(xx_51,ww_51,'b*')