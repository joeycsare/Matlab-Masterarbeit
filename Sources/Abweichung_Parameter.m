% Abweichung Parameter
%     j1_stiff = 1213.5
%     j2_stiff = 1219.6
%     j3_stiff = 1019.1
%     j4_stiff = 1130
%     j5_stiff = 986.66
%     j6_stiff = 505.32

% TCP Abweichung [x,y,z]
e1_Abweichung = [-0.3,-0.16,-0.626];
e2_Abweichung = [-0.185,-0.19,-0.426];
e3_Abweichung = [0.625,0.11,0.12];
e4_Abweichung = [0.491,-0.005,0.13];
e5_Abweichung = [0.015,-0.6,-0.17];
e6_Abweichung = [0.07,-0.654,-0.16];
e7_Abweichung = [0.41,-0.32,-0.075];


% TCP Abweichung Simulation[x,y,z]
e1_Abweichung_sim = [-0.3170,-0.1453,-0.6508];
e2_Abweichung_sim = [-0.2203,-0.1482,-0.4375];
e3_Abweichung_sim = [0.3527,0.0798,0.1766];
e4_Abweichung_sim = [0.2826,-0.008893,0.1882];
e5_Abweichung_sim = [0.02238,-0.3632,-0.1163];
e6_Abweichung_sim = [0.07231,-0.3854,-0.133];%
e7_Abweichung_sim = [0.2091,-0.1901,-0.03964];



%Fehler in Bahnabweichung
e1_error = e1_Abweichung - e1_Abweichung_sim;
e2_error = e2_Abweichung - e2_Abweichung_sim;
e3_error = e3_Abweichung - e3_Abweichung_sim;
e4_error = e4_Abweichung - e4_Abweichung_sim;
e5_error = e5_Abweichung - e5_Abweichung_sim;
e6_error = e6_Abweichung - e6_Abweichung_sim;
e7_error = e7_Abweichung - e7_Abweichung_sim;


%Fehler in Bahnabweichung in %
e1_err_x = e1_error(1)/e1_Abweichung(1)
e1_err_y = e1_error(2)/e1_Abweichung(2)
e1_err_z = e1_error(3)/e1_Abweichung(3)

e2_err_x = e2_error(1)/e2_Abweichung(1)
e2_err_y = e2_error(2)/e2_Abweichung(2)
e2_err_z = e2_error(3)/e2_Abweichung(3)

e3_err_x = e3_error(1)/e3_Abweichung(1)
e3_err_y = e3_error(2)/e3_Abweichung(2)
e3_err_z = e3_error(3)/e3_Abweichung(3)

e4_err_x = e4_error(1)/e4_Abweichung(1)
e4_err_y = e4_error(2)/e4_Abweichung(2)
e4_err_z = e4_error(3)/e4_Abweichung(3)

e5_err_x = e5_error(1)/e5_Abweichung(1)
e5_err_y = e5_error(2)/e5_Abweichung(2)
e5_err_z = e5_error(3)/e5_Abweichung(3)

e6_err_x = e6_error(1)/e6_Abweichung(1)
e6_err_y = e6_error(2)/e6_Abweichung(2)
e6_err_z = e6_error(3)/e6_Abweichung(3)

e7_err_x = e7_error(1)/e7_Abweichung(1)
e7_err_y = e7_error(2)/e7_Abweichung(2)
e7_err_z = e7_error(3)/e7_Abweichung(3)


% Abweichungen von error beim Training	
% Trainingsdatensatz	
% x	5%-43%
% y	9%-41%
% z	2%-47%
%
% Abweichungen von error Validierung	
% Trainingsdatensatz	
% x	49%
% y	41%
% z	47%
%
% Maximale Abweichung Absolut
% x	0.27mm
% y	-0.26mm
% z	0.05mm
