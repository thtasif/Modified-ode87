function dX = pendulum(t,X)

dX = zeros(2,1);


dX(1,1) = X(2,1);
dX(2,1) = -sin(X(1,1));

end