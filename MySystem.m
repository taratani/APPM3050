function xdot = MySystem( t, x )

%-------------------------------------
%    System of ODEs that computes the
%    derivatives of the four equations.
%    Be sure to keep this consistant in all of your code.

%    x(1) = x(t)
%    x(2) = y(t)
%    x(3) = v(t)
%    x(4) = theta(t)
%-------------------------------------

g = 9.81;              % Acceleration of gravity

cosine = cos(x(4));
sine = sin(x(4));

                       % For now, a system with no drag
xdot(1) = x(3) * cosine;
xdot(2) = x(3) * sine;
xdot(3) = -0.002 * x(3)^2 - g * sine;
xdot(4) = -g/x(3) * cosine;

%-------------------------------------

xdot = xdot';         % You must return a column vector