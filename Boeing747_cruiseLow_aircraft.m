% Boeing747_cruiseLow_aircraft.m
% Student: Manuel Orlando Sandoval
% CC: 1002538006
%
% Aircraft: Boeing 747-200
% Flight condition: Cruise (low)
% Altitude (ft): 20000
% Airspeed (kn): 399
% Mach number: 0.650
% Script name: Boeing747_cruiseLow_aircraft.m
%
% Data source:
% Roskam, J. (2001), "Airplane Flight Dynamics and Automatic Flight Controls," Part I, DARcorporation.
%
% Author:
%   Manuel Orlando Sandoval
%   manuel.sandoval@udea.edu.co
%
% aircraft data
aircraft.aircraftName = 'Boeing 747-200';
aircraft.flightCondition = 'Cruise (low)';
% aircraft flight contitions data;
aircraft.h = 20000*0.3048;
aircraft.V = 399*1852/3600;
aircraft.g = 9.80665;
% aircraft geometry
aircraft.S = 5500*0.3048^2;
aircraft.b = 196*0.3048;
aircraft.cbar = 27.3*0.3048;
aircraft.A = aircraft.b^2/aircraft.S;
% aircraft aerodynamic parameters
aircraft.M0 = 0.650;
aircraft.CD0 = 0.0171;
aircraft.CLmindrag = 0.0509;
aircraft.e = 0.7000;
CDu = 0;
aircraft.CDM = CDu/aircraft.M0;
CYbeta = -0.90;
CYdeltaa = 0;
CYdeltar = 0.120;
CYp = 0;
CYr = 0;
aircraft.CCbeta = -CYbeta;
aircraft.CCdeltaa = -CYdeltaa;
aircraft.CCdeltar = -CYdeltar;
aircraft.CCp = -CYp;
aircraft.CCr = -CYr;
aircraft.CL0 = 0.21;
aircraft.CLalpha = 4.4;
aircraft.CLdeltaf = 0;
aircraft.CLih = 0.70;
aircraft.CLdeltae = 0.32;
aircraft.CLalphadot = 7.0;
aircraft.CLq = 6.6;
CLu = 0.13;
aircraft.CLM = CLu/aircraft.M0;
aircraft.Clbeta = -0.160;
aircraft.Cldeltaa = -0.013;
aircraft.Cldeltar = 0.008;
aircraft.Clp = -0.340;
aircraft.Clr = 0.130;
aircraft.Cm0 = 0;
aircraft.Cmalpha = -1.00;
aircraft.Cmdeltaf = 0;
aircraft.Cmih = -2.7;
aircraft.Cmdeltae = -1.30;
aircraft.Cmalphadot = -4.0;
aircraft.Cmq = -20.5;
Cmu = 0.013;
aircraft.CmM = Cmu/aircraft.M0;
aircraft.Cnbeta = 0.160;
aircraft.Cndeltaa = -0.0018;
aircraft.Cndeltar = -0.100;
aircraft.Cnp = -0.026;
aircraft.Cnr = -0.280;
% aircraft mass and inertia parameters
aircraft.m = 636636*4.448222/aircraft.g;
aircraft.Ix = 18200000*14.593903*0.3048^2;
aircraft.Iy = 33100000*14.593903*0.3048^2;
aircraft.Iz = 49700000*14.593903*0.3048^2;
aircraft.Ixz = 970000*14.593903*0.3048^2;
aircraft.Ib = [aircraft.Ix           0        -aircraft.Ixz;
                       0          aircraft.Iy         0;
                -aircraft.Ixz         0         aircraft.Iz];
aircraft.Ibinv = inv(aircraft.Ib);
% aircraft propulsion system parameters
aircraft.Tmax = 50000*4*4.448222;
