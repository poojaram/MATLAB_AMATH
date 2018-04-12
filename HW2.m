% Finding fuction values

x = 0;
f0 = x^5 - (2*x^4) + (3*x^3) - (2*x^2) + x - cos(x);
x = 1.2;
fn = x^5 - (2*x^4) + (3*x^3) - (2*x^2) + x - cos(x);
A1 = f0 * fn;
save("A1.dat","A1","-ascii");

% Bisection method to find zero of f

x1 = 0;
x2 = 1.2;
count = 0;
for j = 1:1000
x = (x1 + x2)/2; %mid-pint value
count = count + 1;
f_value = x^5 - (2*x^4) + (3*x^3) - (2*x^2) + x - cos(x);
if(f_value > 0) 
    x2 = x;
else
    if(f_value < 0)
    x1 = x;
     end
end
if ( abs(f_value) < 10^(-10) )
    break
end
end
save("A2.dat","x","-ascii");
save("A3.dat","count","-ascii");

