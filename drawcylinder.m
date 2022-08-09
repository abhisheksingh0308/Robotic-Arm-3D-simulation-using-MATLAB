function drawcylinder(P1,P2,radius,color)
N=P2-P1;
N=N/norm(N); 
N=cross(N,[0 0 1]);
p=N(1);
q=N(2);
r=N(3);
t=0:.1:2*pi;
[m n]=size(t);
x = zeros(1,n);
y = zeros(1,n);
z = zeros(1,n);
for i=1:n
    x(i) = radius*cos(t(i));
    y(i) = radius*sin(t(i));
    z(i) = 0*t(i);
end
P=[x;y;z]';
if r==0
    thetax=-pi/2;
else
    thetax=-atan(q/r);
end
X=((r/(q^2/r^2 + 1)^(1/2) + q^2/(r*(q^2/r^2 + 1)^(1/2))));
if isnan(X)
    X=Inf;
end
thetay=atan(-p/X);
thetaz=asin(norm(N));
Tx=T(thetax,0,0);
Ty=T(0,thetay,0);
Tz=T(0,0,thetaz);
C0=P*Tx*Ty*Tz/Ty/Tx;
C1=[P1(1)+C0(:,1),P1(2)+C0(:,2),P1(3)+C0(:,3)];
C2=[P2(1)+C0(:,1),P2(2)+C0(:,2),P2(3)+C0(:,3)];
hold on
for i=1:n-1
    drawplane(C1(i,:),C2(i,:),C2(i+1,:),C1(i+1,:),color);
end
drawplane(C1(n,:),C2(n,:),C2(1,:),C1(1,:),color);
fill3(C1(:,1),C1(:,2),C1(:,3),color);
fill3(C2(:,1),C2(:,2),C2(:,3),color);
end
function drawcylinder(P1,P2,radius,color)
N=P2-P1;
N=N/norm(N); 
N=cross(N,[0 0 1]);
p=N(1);
q=N(2);
r=N(3);
t=0:.1:2*pi;
[m n]=size(t);
x = zeros(1,n);
y = zeros(1,n);
z = zeros(1,n);
for i=1:n
    x(i) = radius*cos(t(i));
    y(i) = radius*sin(t(i));
    z(i) = 0*t(i);
end
P=[x;y;z]';
if r==0
    thetax=-pi/2;
else
    thetax=-atan(q/r);
end
X=((r/(q^2/r^2 + 1)^(1/2) + q^2/(r*(q^2/r^2 + 1)^(1/2))));
if isnan(X)
    X=Inf;
end
thetay=atan(-p/X);
thetaz=asin(norm(N));
Tx=T(thetax,0,0);
Ty=T(0,thetay,0);
Tz=T(0,0,thetaz);
C0=P*Tx*Ty*Tz/Ty/Tx;
C1=[P1(1)+C0(:,1),P1(2)+C0(:,2),P1(3)+C0(:,3)];
C2=[P2(1)+C0(:,1),P2(2)+C0(:,2),P2(3)+C0(:,3)];
hold on
for i=1:n-1
    drawplane(C1(i,:),C2(i,:),C2(i+1,:),C1(i+1,:),color);
end
drawplane(C1(n,:),C2(n,:),C2(1,:),C1(1,:),color);
fill3(C1(:,1),C1(:,2),C1(:,3),color);
fill3(C2(:,1),C2(:,2),C2(:,3),color);
end
