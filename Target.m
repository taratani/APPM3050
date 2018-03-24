function thetaHit = Target( targetCoord )

global target

target = targetCoord;

%--------------------------------
% Initial guesses for firing angle
% Your secret technology goes here

thetaA = 0;
thetaB = pi/3;

%--------------------------------

thetaHit = Bisection(thetaA, thetaB);

