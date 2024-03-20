%DH Parameter KUKA KR10 R1100 sixx

alpha = [0 pi/2 0 pi/2 pi/2 -pi/2 0];
a = [0 25 560 35 0 0 0];
theta = [0 0 pi/2 0 0 0 0];
d = [0 400 0 0 515 0 80];

T1 = compute_dh_matrix(theta(1), d(1), a(1), alpha(1));
T2 = compute_dh_matrix(theta(2), d(2), a(2), alpha(2));
T3 = compute_dh_matrix(theta(3), d(3), a(3), alpha(3));
T4 = compute_dh_matrix(theta(4), d(4), a(4), alpha(4));
T5 = compute_dh_matrix(theta(5), d(5), a(5), alpha(5));
T6 = compute_dh_matrix(theta(6), d(6), a(6), alpha(6));
T7 = compute_dh_matrix(theta(7), d(7), a(7), alpha(7));

Tges = T1*T2*T3*T4*T5*T6*T7

test_vector = [0;0;0;1];

TCP_pos = Tges*test_vector