% Achssteifigkeiten
% Harmonic Drive HFUC40-2UH
% --> 67 Nm/arcmin   --> 1447200 Nm/ 360°(2Pi)   ---> 230.329 Nm/ 1 
%stiff = 4020; % Nm/deg


%Steifigkeiten aus Optimierung mit Parameteridentifikation_daten.m
%     j1_stiff = 37067;
%     j2_stiff = 55569;
%     j3_stiff = 50089;
%     j4_stiff = 48839;
%     j5_stiff = 50462;
%     j6_stiff = 30863.22; %Wert wurde um 30000 angepasst.


% Gelenkwinkel = e1_joint;
% Anregung = e1_Anregung;

%Steifigkeiten aus Optimierung [Nm/deg]
    j1_stiff = 1213.5
    j2_stiff = 1219.6
    j3_stiff = 1019.1
    j4_stiff = 1130
    j5_stiff = 986.66
    j6_stiff = 505.32


%frei gewählt
damp = 5; %30
%Seitenzustellung 
ae_max=0.5;             % mm
%Tiefenzustellung
ap=0.5;               % mm
%Aus Creo Material Alu-Allgemein
dichte_alu = 2700;  % kgcs/m³