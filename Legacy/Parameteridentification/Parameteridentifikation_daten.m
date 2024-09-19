% Parameteridentifikation

% Experimente
%--------------------------------------
time = [0:0.001:2];
time = time(:);
[numRows,numCols] = size(time)

% Gelenkwinkel
e1_joint = [-72.24, -20.87, 99.05, -74.26, -87.08, 11.23];
e2_joint = [-63.89, -30.04, 118.11, -65.65, -89.58, 1.54];
e3_joint = [-28.83, -30.4, 123.69, -30.64, -93.17, -1.89];
e4_joint = [-28.83, -30.4, 123.69, -30.64, -93.17, -1.89];
e5_joint = [-30.17, -19.97, 109, -31.93, -89.51, 0.31];
e6_joint = [-30.17, -19.97, 109, -31.93, -89.51, 0.31];
e7_joint = [-30.17, -19.97, 109, -31.93, -89.51, 0.31];
e8_joint = [-32.47, -34.32, 120.23, -34.28, -86.95, 2.1];
e9_joint = [-32.47, -34.32, 120.23, -34.28, -86.95, 2.1];
e10_joint = [-27.27, -25.42, 105.37, -29.38, -81.56, 4.7];
e11_joint = [-27.27, -25.42, 105.37, -29.38, -81.56, 4.7];
e12_joint = [-16.21, -35.2, 116.23, -18.14, -81.78, 2.61];

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
e8_j1 = ones(numRows,1)*e8_joint(1);
e8_j2 = ones(numRows,1)*e8_joint(2);
e8_j3 = ones(numRows,1)*e8_joint(3);
e8_j4 = ones(numRows,1)*e8_joint(4);
e8_j5 = ones(numRows,1)*e8_joint(5);
e8_j6 = ones(numRows,1)*e8_joint(6);
e9_j1 = ones(numRows,1)*e9_joint(1);
e9_j2 = ones(numRows,1)*e9_joint(2);
e9_j3 = ones(numRows,1)*e9_joint(3);
e9_j4 = ones(numRows,1)*e9_joint(4);
e9_j5 = ones(numRows,1)*e9_joint(5);
e9_j6 = ones(numRows,1)*e9_joint(6);
e10_j1 = ones(numRows,1)*e10_joint(1);
e10_j2 = ones(numRows,1)*e10_joint(2);
e10_j3 = ones(numRows,1)*e10_joint(3);
e10_j4 = ones(numRows,1)*e10_joint(4);
e10_j5 = ones(numRows,1)*e10_joint(5);
e10_j6 = ones(numRows,1)*e10_joint(6);
e11_j1 = ones(numRows,1)*e11_joint(1);
e11_j2 = ones(numRows,1)*e11_joint(2);
e11_j3 = ones(numRows,1)*e11_joint(3);
e11_j4 = ones(numRows,1)*e11_joint(4);
e11_j5 = ones(numRows,1)*e11_joint(5);
e11_j6 = ones(numRows,1)*e11_joint(6);
e12_j1 = ones(numRows,1)*e12_joint(1);
e12_j2 = ones(numRows,1)*e12_joint(2);
e12_j3 = ones(numRows,1)*e12_joint(3);
e12_j4 = ones(numRows,1)*e12_joint(4);
e12_j5 = ones(numRows,1)*e12_joint(5);
e12_j6 = ones(numRows,1)*e12_joint(6);




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
e1_Abweichung = [0.13, -0.004, 0.11];
e2_Abweichung = [0.12, -0.01, 0.17];
e3_Abweichung = [0.095, 0.099, 0.14];
e4_Abweichung = [0.09, 0.035, 0.15];
e5_Abweichung = [0.11, 0.03, 0.19];
e6_Abweichung = [0.1, 0.009, 0.12];
e7_Abweichung = [0.12, 0.002, 0.19];
e8_Abweichung = [0.13, 0, 0];
e9_Abweichung = [0.14, -0.007, 0.01];
e10_Abweichung = [0.4, -0.09, 0.1];
e11_Abweichung = [0.9, 0.009, -0.2];
e12_Abweichung = [0.1, 0.022, -0.27];




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
e8_abw_x = ones(numRows,1)*e8_Abweichung(1);
e8_abw_y = ones(numRows,1)*e8_Abweichung(2);
e8_abw_z = ones(numRows,1)*e8_Abweichung(3);
e9_abw_x = ones(numRows,1)*e9_Abweichung(1);
e9_abw_y = ones(numRows,1)*e9_Abweichung(2);
e9_abw_z = ones(numRows,1)*e9_Abweichung(3);
e10_abw_x = ones(numRows,1)*e10_Abweichung(1);
e10_abw_y = ones(numRows,1)*e10_Abweichung(2);
e10_abw_z = ones(numRows,1)*e10_Abweichung(3);
e11_abw_x = ones(numRows,1)*e11_Abweichung(1);
e11_abw_y = ones(numRows,1)*e11_Abweichung(2);
e11_abw_z = ones(numRows,1)*e11_Abweichung(3);
e12_abw_x = ones(numRows,1)*e12_Abweichung(1);
e12_abw_y = ones(numRows,1)*e12_Abweichung(2);
e12_abw_z = ones(numRows,1)*e12_Abweichung(3);


% ROS bag
% 2022-05-09-15-05-56.bag (mean Werte von 6000:7500) [x,y,z,tx,ty,tz]
e1_Anregung = [14.4095515509660, 15.77485302531645, 17.6465622844770, -0.526985055296469, 1.18684183477681, -0.0847633757495003];
% 2022-05-10-09-35-29.bag (mean Werte von 40000:41500)
e2_Anregung = [19.4810821605596, 1.03900173817455, 26.2882191692205, -0.0258004283810793, 1.57316192471685, -0.0797169653564289];
% 2022-05-10-10-03-06.bag (mean Werte von 11500:13000)
e3_Anregung = [13.2344794163891, -10.0915058354430, 7.82049846768821, 0.890445394403730, 1.08674168687542, 0.0260880366422385];
% 2022-05-10-10-13-05.bag (mean Werte von 7500:9000)
e4_Anregung = [18.3294942291806, -4.82019553431046, 9.38985396802132, 0.457439750832779, 1.51909769753497, -0.0437294203864090];
% 2022-05-10-10-24-20.bag (mean Werte von 8500:10000)
e5_Anregung = [20.8970674137242, -0.872651612258495, 3.74229021385743, 0.0872393304463692, 1.69494162958028, -0.0704423517654896];
% 2022-05-10-10-43-01.bag (mean Werte von 7400:8900)
e6_Anregung = [18.7669755829447, 0.736906894736843, 2.67722292338441, -0.0902657968021320, 1.48724052365090, -0.0827439320453031];
% 2022-05-10-10-53-02.bag (mean Werte von 4000:5500)
e7_Anregung = [19.3787250552965, 0.651864246502332, 7.43792933644238, -0.0218389693537641, 1.52720606662225, -0.0877441725516323];
% 2022-05-10-11-03-53.bag (mean Werte von 4000:5500)
e8_Anregung = [-1.68989438707529, 1.79517275682878, 25.6228165729513, -0.0888352325116588, -0.0766170159893404, -0.000359721518987342];
% 2022-05-10-11-08-28.bag (mean Werte von 6500:8000)
e9_Anregung = [-0.0381157341772152, 24.2655758141239, 18.8291281958694, -1.92308645436376, 0.0227964477015323, -0.0368804263824117];
% 2022-05-10-11-26-14.bag (mean Werte von 6000:7500)
e10_Anregung = [1.90050994003997,9.86526312658227,4.29232889540306,-0.844672438374417,0.158117121252499,-0.0384745343104597]; 
% 2022-05-10-11-35-39.bag (mean Werte von 11500:13000)
e11_Anregung = [-17.2902436808794, -0.443504496335776, 2.94346815056630, 0.0457303524317122, -1.34776532578281, 0.0573442938041306, ];
% 2022-05-10-11-50-27.bag (mean Werte von 6000:7500)
e12_Anregung = [-27.0447778047968, -9.13168978081280, 3.95000298600933, 0.795226273817455, -2.09798382678214, 0.0681702711525650];

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
e8_anreg_x  = ones(numRows,1)*e8_Anregung(1);
e8_anreg_y  = ones(numRows,1)*e8_Anregung(2);
e8_anreg_z  = ones(numRows,1)*e8_Anregung(3);
e8_anreg_tx = ones(numRows,1)*e8_Anregung(4);
e8_anreg_ty = ones(numRows,1)*e8_Anregung(5);
e8_anreg_tz = ones(numRows,1)*e8_Anregung(6);
e9_anreg_x  = ones(numRows,1)*e9_Anregung(1);
e9_anreg_y  = ones(numRows,1)*e9_Anregung(2);
e9_anreg_z  = ones(numRows,1)*e9_Anregung(3);
e9_anreg_tx = ones(numRows,1)*e9_Anregung(4);
e9_anreg_ty = ones(numRows,1)*e9_Anregung(5);
e9_anreg_tz = ones(numRows,1)*e9_Anregung(6);
e10_anreg_x  = ones(numRows,1)*e10_Anregung(1);
e10_anreg_y  = ones(numRows,1)*e10_Anregung(2);
e10_anreg_z  = ones(numRows,1)*e10_Anregung(3);
e10_anreg_tx = ones(numRows,1)*e10_Anregung(4);
e10_anreg_ty = ones(numRows,1)*e10_Anregung(5);
e10_anreg_tz = ones(numRows,1)*e10_Anregung(6);
e11_anreg_x  = ones(numRows,1)*e11_Anregung(1);
e11_anreg_y  = ones(numRows,1)*e11_Anregung(2);
e11_anreg_z  = ones(numRows,1)*e11_Anregung(3);
e11_anreg_tx = ones(numRows,1)*e11_Anregung(4);
e11_anreg_ty = ones(numRows,1)*e11_Anregung(5);
e11_anreg_tz = ones(numRows,1)*e11_Anregung(6);
e12_anreg_x  = ones(numRows,1)*e12_Anregung(1);
e12_anreg_y  = ones(numRows,1)*e12_Anregung(2);
e12_anreg_z  = ones(numRows,1)*e12_Anregung(3);
e12_anreg_tx = ones(numRows,1)*e12_Anregung(4);
e12_anreg_ty = ones(numRows,1)*e12_Anregung(5);
e12_anreg_tz = ones(numRows,1)*e12_Anregung(6);
