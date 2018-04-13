% Finding fuction values

x = 0;
f0 = x^5 - (2*x^4) + (3*x^3) - (2*x^2) + x - cos(30*x);
x = 1.2;
fn = x^5 - (2*x^4) + (3*x^3) - (2*x^2) + x - cos(30*x);
A1 = f0 * fn;
save("A1.dat","A1","-ascii");

% Bisection method to find zero of f

x1 = 0;
x2 = 1.2;
count = 0;
for j = 1:1000
x = (x1 + x2)/2; %mid-pint value
count = count + 1;
f_value = x^5 - (2*x^4) + (3*x^3) - (2*x^2) + x - cos(30*x);
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

%Problem - 2
% Population - logistic growth map

p = 0.3;
p1 = zeros(1,100);
p1(1) = p;
r1 = 2.5;
for k = 1:100
    p = r1 * p * (1 - p);
    p1(k+1) = p;
end
p = 0.3;
p2 = zeros(1,100);
p2(1) = p;
r2 = 3.2;
for k = 1:100
    p = r2 * p * (1 - p);
    p2(k+1) = p;
end
p = 0.3;
p3 = zeros(1,100);
p3(1) = p;
r2 = 3.2;
for k = 1:100
    p = r2 * p * (1 - p);
    p3(k+1) = p;
end

% Calculating eqilibrium or steady state of the logistic map

A = [p1(99), p1(100), p1(101); p2(99), p2(100), p2(101); p3(99), p3(100), p3(101)];
save("A4.dat","A","-ascii");

is_equilibrium = zeros(1,15);
equilibrium_value = zeros(1, 15);
count_year = 0;
for r = 2:0.1:3.4
    count_year = count_year + 1;
    p = 0.3;
    for k = 1:1:500
        p = r * p * (1 - p);
    end
    p501 = r * p * (1 - p);
    if (abs(p501 - p) < 10^(-8))
        is_equilibrium(count_year) = 1;
        equilibrium_value(count_year) = p501;
    end
end

save("A5.dat","is_equilibrium","-ascii");
save("A6.dat","equilibrium_value","-ascii");


% Problem - 3
