function minDist = Distance( theta )

% close all                        % close all ploting windows

%-------------------------------------------------------------
%     Initial conditions and parameters
%-------------------------------------------------------------

global target;

tInit = 0;                % set time integration interval
tFin  = 2;                % Use Inf with stop conditions

                          % Set initial conditions...
xInit(1) = 0;             % initial x coordinate
xInit(2) = 0;             % initial y coordinate
xInit(3) = 1500;          % v_0 value
xInit(4) = theta;         % initial theta value

%-------------------------------------------------------------
%     Integrate the ODE system
%-------------------------------------------------------------

options = odeset('Events', @ControlEvents,...
                 'Refine', 12,...
                 'RelTol', 1e-3,...
                 'AbsTol', 0.001);

[t, x] = ode45( @MySystem, [tInit, tFin], xInit, options);

%-------------------------------------------------------------
%     Minimum distance calculations
%-------------------------------------------------------------

d = ...
[minDist, id] = ...

%-------------------------------------------------------------
%     To plot, or not to plot?
%-------------------------------------------------------------

    plot( x(:,1), x(:,2), 'g.', ...       % plot solution curve
          target(1), target(2), 'r.' ),   % plot target point
          xlabel('X'), ylabel('Y'),
          title('Projectile path'),
          legend('Path', 'Target'),
          axis([0 3000 0 3000])
    drawnow

%-------------------------------------------------------------



