A = [4,2;1,-2];
B = [3,-1;3,-2];
C = [1,2;1,-3;-2,3];
D = [1, -3, -2; 1, 9, 4];
x = [1; 0];
y = [0; 1];
z = [1; -4;2];
A1 = A + B;
A2 = (3.*x) - (2.*y);
A3 = A*x;
A4 = A*(y - x);
A5 = C*x;
A6 = (C*y) + z;
A7 = A*B;
A8 = B*A;
A9 = A*D;
A10 = D(:,2);
A11 = C(2:3, :);
A12 = D(2,1:2);
value = 0;
for k = 1:20000
    value = value + 0.1;
end
A13 = abs(2000-value);
value = 0;
for k = 1:16000
    value = value + 0.125;
end
A14 = abs(2000-value);
value = 0;
for k = 1:10000
    value = value + 0.2;
end
A15 = abs(2000-value);
value = 0;
for k = 1:8000
    value = value + 0.25;
end
A16 = abs(2000-value);
p = 0.4;
r = 3;
t = 0;
for k = 1:100
    p = 3 * p * (1-p);
end
A17 = p;
save("A1.dat","A1","-ascii");
save("A2.dat","A2","-ascii");
save("A3.dat","A3","-ascii");
save("A4.dat","A4","-ascii");
save("A5.dat","A5","-ascii");
save("A6.dat","A6","-ascii");
save("A7.dat","A7","-ascii");
save("A8.dat","A8","-ascii");
save("A9.dat","A9","-ascii");
save("A10.dat","A10","-ascii");
save("A11.dat","A11","-ascii");
save("A12.dat","A12","-ascii");
save("A13.dat","A13","-ascii");
save("A14.dat","A14","-ascii");
save("A15.dat","A15","-ascii");
save("A16.dat","A16","-ascii");
save("A17.dat","A17","-ascii");