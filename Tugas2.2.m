clear
clc

function y=f(x)
y = 0.0074*x.^4-0.284*x.^3+3.55*x.^2-12.183*x-5;
end

function yaksen=turunan(x)
yaksen=0.0296*x.^3-0.852*x^2+7.1*x-12.183;
end

x=linspace(15,20);
plot(x,f(x));
itermaks= 1000;
epsilon= 10^(-20);
xlama=16.15;
for k= 1:itermaks;
    xbaru=xlama-(f(xlama)/turunan(xlama));
    if abs(xbaru-xlama) < epsilon;
        break;
end
xlama=xbaru
end
