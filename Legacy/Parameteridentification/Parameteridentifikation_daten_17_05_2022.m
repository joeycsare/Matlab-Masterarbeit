% Parameteridentifikation

% Experimente
%--------------------------------------
time = [0:0.001:2];
time = time(:);
[numRows,numCols] = size(time)

% Gelenkwinkel
e1_joint = [-25.48, -38.96, 106.98, 0.08, 22.92, -27.5];
e2_joint = [-33.84, -41.45, 119.82, 0.76, 12.62, -35.86];
e3_joint = [-33.84, -41.45, 119.82, 0.76, 12.62, -35.86];
e4_joint = [-29.53, -37.57, 106.51, 0.65, 22.02, -31.41];
e5_joint = [-31.45, -36.95, 104.66, 0.53, 23.27, -33.22];
e6_joint = [-32.08, -32.7, 92.83, 0.39, 30.85, -33.69];
e7_joint = [-41.14, -46.57, 114.97, 0.1, 22.61, -42.51];


e1_j1 = ones(numRows,1)*e1_joint(1);
e1_j2 = ones(numRows,1)*e1_joint(2);
e1_j3 = ones(numRows,1)*e1_joint(3);
e1_j4 = ones(numRows,1)*e1_joint(4);
e1_j5 = ones(numRows,1)*e1_joint(5);
e1_j6 = ones(numRows,1)*e1_joint(6);
e2_j1 = ones(numRows,1)*e2_joint(1);
e2_j2 = ones(numRows,1)*e2_joint(2);
e2_j3 = ones(numRows,1)*e2_joint(3);
e2_j4 = ones(numRows,1)*e2_joint(4);
e2_j5 = ones(numRows,1)*e2_joint(5);
e2_j6 = ones(numRows,1)*e2_joint(6);
e3_j1 = ones(numRows,1)*e3_joint(1);
e3_j2 = ones(numRows,1)*e3_joint(2);
e3_j3 = ones(numRows,1)*e3_joint(3);
e3_j4 = ones(numRows,1)*e3_joint(4);
e3_j5 = ones(numRows,1)*e3_joint(5);
e3_j6 = ones(numRows,1)*e3_joint(6);
e4_j1 = ones(numRows,1)*e4_joint(1);
e4_j2 = ones(numRows,1)*e4_joint(2);
e4_j3 = ones(numRows,1)*e4_joint(3);
e4_j4 = ones(numRows,1)*e4_joint(4);
e4_j5 = ones(numRows,1)*e4_joint(5);
e4_j6 = ones(numRows,1)*e4_joint(6);
e5_j1 = ones(numRows,1)*e5_joint(1);
e5_j2 = ones(numRows,1)*e5_joint(2);
e5_j3 = ones(numRows,1)*e5_joint(3);
e5_j4 = ones(numRows,1)*e5_joint(4);
e5_j5 = ones(numRows,1)*e5_joint(5);
e5_j6 = ones(numRows,1)*e5_joint(6);
e6_j1 = ones(numRows,1)*e6_joint(1);
e6_j2 = ones(numRows,1)*e6_joint(2);
e6_j3 = ones(numRows,1)*e6_joint(3);
e6_j4 = ones(numRows,1)*e6_joint(4);
e6_j5 = ones(numRows,1)*e6_joint(5);
e6_j6 = ones(numRows,1)*e6_joint(6);
e7_j1 = ones(numRows,1)*e7_joint(1);
e7_j2 = ones(numRows,1)*e7_joint(2);
e7_j3 = ones(numRows,1)*e7_joint(3);
e7_j4 = ones(numRows,1)*e7_joint(4);
e7_j5 = ones(numRows,1)*e7_joint(5);
e7_j6 = ones(numRows,1)*e7_joint(6);





% % TCP Abweichung [x,y,z] falsche Koordinaten
% e1_Abweichung = [0.11, 0.004, 0.13];
% e2_Abweichung = [0.17, 0.01, 0.12];
% e3_Abweichung = [0.14, -0.099, 0.095];
% e4_Abweichung = [0.15, -0.035, 0.09];
% e5_Abweichung = [0.19, -0.03, 0.11];
% e6_Abweichung = [0.12, -0.009, 0.1];
% e7_Abweichung = [0.19, -0.002, 0.12];
% e8_Abweichung = [0, 0, 0.13];
% e9_Abweichung = [0.01, 0.007, 0.14];
% e10_Abweichung = [0.1, 0.09, 0.4];
% e11_Abweichung = [-0.2, -0.009, 0.9];
% e12_Abweichung = [-0.27, -0.022, 0.1];



% TCP Abweichung [x,y,z]
e1_Abweichung = [-0.3,-0.16,-0.626];
e2_Abweichung = [-0.185,-0.19,-0.426];
e3_Abweichung = [0.625,0.11,0.12];
e4_Abweichung = [0.491,-0.005,0.13];
e5_Abweichung = [0.015,-0.6,-0.17];
e6_Abweichung = [0.07,-0.654,-0.16];
e7_Abweichung = [0.41,-0.32,-0.075];




% TCP Abweichung als Zeitreihe
e1_abw_x = ones(numRows,1)*e1_Abweichung(1);
e1_abw_y = ones(numRows,1)*e1_Abweichung(2);
e1_abw_z = ones(numRows,1)*e1_Abweichung(3);
e2_abw_x = ones(numRows,1)*e2_Abweichung(1);
e2_abw_y = ones(numRows,1)*e2_Abweichung(2);
e2_abw_z = ones(numRows,1)*e2_Abweichung(3);
e3_abw_x = ones(numRows,1)*e3_Abweichung(1);
e3_abw_y = ones(numRows,1)*e3_Abweichung(2);
e3_abw_z = ones(numRows,1)*e3_Abweichung(3);
e4_abw_x = ones(numRows,1)*e4_Abweichung(1);
e4_abw_y = ones(numRows,1)*e4_Abweichung(2);
e4_abw_z = ones(numRows,1)*e4_Abweichung(3);
e5_abw_x = ones(numRows,1)*e5_Abweichung(1);
e5_abw_y = ones(numRows,1)*e5_Abweichung(2);
e5_abw_z = ones(numRows,1)*e5_Abweichung(3);
e6_abw_x = ones(numRows,1)*e6_Abweichung(1);
e6_abw_y = ones(numRows,1)*e6_Abweichung(2);
e6_abw_z = ones(numRows,1)*e6_Abweichung(3);
e7_abw_x = ones(numRows,1)*e7_Abweichung(1);
e7_abw_y = ones(numRows,1)*e7_Abweichung(2);
e7_abw_z = ones(numRows,1)*e7_Abweichung(3);

% ROS bag
% 2022-05-17-09-23-10.bag (mean Werte von 4000:5500) [x,y,z,tx,ty,tz]
e1_Anregung = [1.59087115123251, -1.61350255229847, 93.9213038900732, 0.159543411725516, 0.201953850766156, -0.0134171345769487];
% 2022-05-17-09-33-38.bag (mean Werte von 5000:6500)
e2_Anregung = [1.44485295936043, -0.857596378414390, 93.9696014830114, 0.163625915389740, -0.0544450512991339, -0.0165902778147901];
% 2022-05-17-09-58-39.bag (mean Werte von 4000:4500)
e3_Anregung = [50.2589266728848, -1.40225750966022, -1.14115162691539, 0.113253215189874, 3.89214705329780, 0.149847879413724];
% 2022-05-17-10-05-41.bag (mean Werte von 8000:9500)
e4_Anregung = [39.1204939746835, 2.84767229380413, -1.34584982544970, -0.266213392405064, 3.06166533311126, 0.116876151898734];
% 2022-05-17-10-20-13.bag (mean Werte von 8000:9500)
e5_Anregung = [1.96026310393071, 52.2953597161892, -3.14284912458362, -4.31170881479013, 0.120275153231179, 0.0255594423717522];
% 2022-05-17-10-28-52.bag (mean Werte von 8000:9500)
e6_Anregung = [2.43522697734844, 47.2489252544970, -1.23386820519654, -3.84148099933378, 0.138091806129247, 0.0604593504330446];
% 2022-05-10-10-53-02.bag (mean Werte von 8000:9500)
e7_Anregung = [41.4717503184544, 28.7487912684877, 15.7202419213858, -2.48646104730180, 3.19339340373084, 0.00719276948700867];

e1_anreg_x  = ones(numRows,1)*e1_Anregung(1);
e1_anreg_y  = ones(numRows,1)*e1_Anregung(2);
e1_anreg_z  = ones(numRows,1)*e1_Anregung(3);
e1_anreg_tx = ones(numRows,1)*e1_Anregung(4);
e1_anreg_ty = ones(numRows,1)*e1_Anregung(5);
e1_anreg_tz = ones(numRows,1)*e1_Anregung(6);
e2_anreg_x  = ones(numRows,1)*e2_Anregung(1);
e2_anreg_y  = ones(numRows,1)*e2_Anregung(2);
e2_anreg_z  = ones(numRows,1)*e2_Anregung(3);
e2_anreg_tx = ones(numRows,1)*e2_Anregung(4);
e2_anreg_ty = ones(numRows,1)*e2_Anregung(5);
e2_anreg_tz = ones(numRows,1)*e2_Anregung(6);
e3_anreg_x  = ones(numRows,1)*e3_Anregung(1);
e3_anreg_y  = ones(numRows,1)*e3_Anregung(2);
e3_anreg_z  = ones(numRows,1)*e3_Anregung(3);
e3_anreg_tx = ones(numRows,1)*e3_Anregung(4);
e3_anreg_ty = ones(numRows,1)*e3_Anregung(5);
e3_anreg_tz = ones(numRows,1)*e3_Anregung(6);
e4_anreg_x  = ones(numRows,1)*e4_Anregung(1);
e4_anreg_y  = ones(numRows,1)*e4_Anregung(2);
e4_anreg_z  = ones(numRows,1)*e4_Anregung(3);
e4_anreg_tx = ones(numRows,1)*e4_Anregung(4);
e4_anreg_ty = ones(numRows,1)*e4_Anregung(5);
e4_anreg_tz = ones(numRows,1)*e4_Anregung(6);
e5_anreg_x  = ones(numRows,1)*e5_Anregung(1);
e5_anreg_y  = ones(numRows,1)*e5_Anregung(2);
e5_anreg_z  = ones(numRows,1)*e5_Anregung(3);
e5_anreg_tx = ones(numRows,1)*e5_Anregung(4);
e5_anreg_ty = ones(numRows,1)*e5_Anregung(5);
e5_anreg_tz = ones(numRows,1)*e5_Anregung(6);
e6_anreg_x  = ones(numRows,1)*e6_Anregung(1);
e6_anreg_y  = ones(numRows,1)*e6_Anregung(2);
e6_anreg_z  = ones(numRows,1)*e6_Anregung(3);
e6_anreg_tx = ones(numRows,1)*e6_Anregung(4);
e6_anreg_ty = ones(numRows,1)*e6_Anregung(5);
e6_anreg_tz = ones(numRows,1)*e6_Anregung(6);
e7_anreg_x  = ones(numRows,1)*e7_Anregung(1);
e7_anreg_y  = ones(numRows,1)*e7_Anregung(2);
e7_anreg_z  = ones(numRows,1)*e7_Anregung(3);
e7_anreg_tx = ones(numRows,1)*e7_Anregung(4);
e7_anreg_ty = ones(numRows,1)*e7_Anregung(5);
e7_anreg_tz = ones(numRows,1)*e7_Anregung(6);
