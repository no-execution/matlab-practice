k=0; % ��������  
n=1; % ���仮�ָ���  
h=b-a;  
T=h/2*(f(a)+f(b));  
err=1;  
while err>=5e-8  
    k=k+1;  
    h=h/2;  
    tmp=0;  
    for i=1:n  
        tmp=tmp+f(a+(2*i-1)*h);  
    end  
    T(k+1,1)=T(k)/2+h*tmp;  
    for j=1:k  
        T(k+1,j+1)=T(k+1,j)+(T(k+1,j)-T(k,j))/(4^j-1);  
    end  
    n=n*2;  
    err=abs(T(k+1,k+1)-122/105);  
end  
R=T(k+1,4)