% simulateNavionAircraft.m
% script to simulate Navion aircraft for given conditions

% recall aircraft data structure for Navion aircraft
Navion_aircraft

% relative CG location respect to nominal CG
deltaCGb = [0;0;0];
% simulation time
tfinal = 120

% set initial state
V = 134.9*1852/3600;
alpha = 0.5012*pi/180;
beta = 0*pi/180;
phi = 0*pi/180;
theta = 0.5012*pi/180;
psi = 0*pi/180;
deltat = 0.3369;
deltaf = 0*pi/180;
deltae = -0.2524*pi/180;
ih = 0*pi/180;
deltaa = 0*pi/180;
deltar = 0*pi/180;

% initial position
pe0 = [0;0;-aircraft.h];
% initial attitude
Phi0 = [phi;theta;psi];
% initial velocity
Vwe = [0;0;0]*1852/3600;
Cbe = DCM(Phi0);
Vrelb = [V*cos(alpha)*cos(beta);V*sin(beta);V*sin(alpha)*cos(beta)];
Vb0 = Vrelb+Cbe*Vwe;
% initial angular velocity
omegab0 = [0;0;0];

% assemble initial state x0
x0 = [pe0;Phi0;Vb0;omegab0];

% assemble controls vector
delta = [deltat;deltaf;ih;deltae;deltaa;deltar];

% simulate aircraft
[t,X,Y] = simulateAircraft(tfinal,x0,delta,Vwe,deltaCGb,aircraft);

% plot simulation results
plotAircraftSimulationResults(t,X,Y,aircraft)









