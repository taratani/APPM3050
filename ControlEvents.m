function [value, stopInteg, direction] = ControlEvents(t, x)


%------------------------------------------------------------
% First stopping condition: stop at y = 0 and desending
%------------------------------------------------------------

value(1)     = x(2);        % First stopping condition
stopInteg(1) = 1;           % To stop, or not to stop...
direction(1) = -1;          % Descending value of f
