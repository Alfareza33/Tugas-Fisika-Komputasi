clear
clc

function y=f(x)
y=x.^3 - 6*x.^2 + 11*x - 6.1;
end

function yaksen=turunan(x)
yaksen=3*x.^2-12*x+11;
end

x=-4:0.001:4;
plot(x,f(x));
itermaks= 1000;
epsilon= 10^(-20);
xlama=3.5;
for k= 1:itermaks;
    xbaru=xlama-(f(xlama)/turunan(xlama));
    if abs(xbaru-xlama) < epsilon;
        break;
end
xlama=xbaru
end
