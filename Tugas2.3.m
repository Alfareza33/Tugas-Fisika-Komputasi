clear
clc

function y=f(d)
y = (2*0.04*d.^(5/2))/5+0.5*40*d.^2-0.095*9.81*d-0.095*9.81*0.43
end

function yaksen=turunan(d)
yaksen=0.04*d.^(3/2)+40*d-0.095*9.81;
end

d=linspace(15,20);
plot(d,f(d));
itermaks= 1000;
epsilon= 10^(-20);
dlama=1;
for k= 1:itermaks;
    dbaru=dlama-(f(dlama)/turunan(dlama));
    if abs(dbaru-dlama) < epsilon;
        break;
end
dlama=dbaru
end
