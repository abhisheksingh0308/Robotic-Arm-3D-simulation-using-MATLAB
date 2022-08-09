function robo(T)
x0=[0.1,0.01,0.01,-0.5,0.01,0.01];
xSol=fsolve(@(x) InvKinematics(x,T),x0);
roboarm(xSol(1),xSol(2),xSol(3),xSol(4),xSol(5),xSol(6));
end
