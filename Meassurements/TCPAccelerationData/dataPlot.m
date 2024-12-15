figure 
subplot(2,1,1);
plot(acc_table.Time, acc_table.cDAQ1Mod1_ai0);
subplot(2,1,2);
plot(acc_table.Time, acc_table.cDAQ1Mod1_ai0*949.7);

figure
subplot(2,1,1);
plot(acc_table.Time, acc_table.cDAQ1Mod1_ai1);
subplot(2,1,2);
plot(acc_table.Time, acc_table.cDAQ1Mod1_ai1*949.7);

figure
subplot(2,1,1);
plot(acc_table.Time, acc_table.cDAQ1Mod1_ai2);
subplot(2,1,2);
plot(acc_table.Time, acc_table.cDAQ1Mod1_ai2*949.7);

% calibriert auf output = 1,053 mV/(m/s²) = 0.001053 V/(m/s2) -> scalierung mit 949.667
% Einheit in V