clear all; close all; clc;

tf = 100;

theta = 3.11;
theta_dot = 0;

X0 = [theta; theta_dot];

options = odeset('RelTol',1e-12,'AbsTol',1e-15,'stats','on');
[T1,X1] = ode87(@(t,x) pendulum(t,x),[0,tf],X0,options);
[T2,X2,nsteps,nfailed,nfevals] = ode87_modified(@(t,x) pendulum(t,x),[0,tf],X0,options);

nfevals
nfailed

figure(1)
plot(X2(:,1),X2(:,2))
grid on
title('Time Responses')
xlabel('\theta')
ylabel('d\theta/dt')
legend('ode87')


figure(2)
plot(T2,X2(:,1))
grid on
title('Time Responses')
xlabel('Time')
ylabel('\theta')
legend('ode87')











