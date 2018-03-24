function root = Bisection(a, b)

% You are finding the root of the function Distance(x).m
% Normally, your root finding stuff goes here

c = (a+b) / 2;          % Formula for bisection method

root = c;

Distance(c);            % Plot the last firing path for fun
