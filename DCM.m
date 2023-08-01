% DCM.m
% function to calculate the Direction Cosine Matrix
% usage
%   Cbe = DCM(Phi)
% where
%   Phi = [phi;theta;psi] : Euler angles (rad)
%   Cbe : direction cosine matrix

function Cbe = DCM(Phi)
 % extract Euler angles from Phi
 phi = Phi(1,1);
 theta = Phi(2,1);
 psi = Phi(3,1);
 
 % calculate cosine and sine of Euler angles
 cphi = cos(phi);
 sphi = sin(phi);
 ctheta = cos(theta);
 stheta = sin(theta);
 cpsi = cos(psi);
 spsi = sin(psi);
 % calculate Cbe
 Cbe = [ctheta*cpsi                        ctheta*spsi             -stheta;
       -cphi*spsi+sphi*stheta*cpsi cphi*cpsi+sphi*stheta*spsi sphi*ctheta;
       sphi*spsi+cphi*stheta*cpsi -sphi*cpsi+cphi*stheta*spsi cphi*ctheta];


end