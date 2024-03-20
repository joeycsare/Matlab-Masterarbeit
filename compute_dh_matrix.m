%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Datei:         compute_dh_matrix.m
%Titel:         Aufstellung der Denavit-Hartenbergmatrix
%Version:       V1.0
%Datum:         06.07.2021
%Autoren:       Maximilian Bryg and Thomas Bertram
%Organisation:  IMP - Hochschule Karlsruhe Technik und Wirtschaft
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


function  [dh_matrix]  = compute_dh_matrix(theta, d, a, alpha)

dh_matrix = eye(4);

% ROTATION FOR X
dh_matrix(1,1) = cos((theta));
dh_matrix(2,1) = sin((theta));

% ROTATION FOR Y 
dh_matrix(1,2) = -(sin(theta))*(cos(alpha));
dh_matrix(2,2) = (cos(theta))*(cos(alpha));
dh_matrix(3,2) = (sin(alpha));

% ROTATION FOR Z
dh_matrix(1,3) = (sin(theta))*(sin(alpha));
dh_matrix(2,3) = -(cos(theta))*(sin(alpha));
dh_matrix(3,3) = (cos(alpha));

% TRANSLATION VECTOR
dh_matrix(1,4) = a*(cos(theta));
dh_matrix(2,4) = a*(sin(theta));
dh_matrix(3,4) = d;

end