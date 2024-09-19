figure 
subplot(2,1,1);
plot(acc_table.Time, acc_table.cDAQ1Mod1_ai0);
subplot(2,1,2);
plot(acc_table.Time, acc_table.cDAQ1Mod1_ai0*0.0104);

figure
subplot(2,1,1);
plot(acc_table.Time, acc_table.cDAQ1Mod1_ai1);
subplot(2,1,2);
plot(acc_table.Time, acc_table.cDAQ1Mod1_ai1*0.0104);

figure
subplot(2,1,1);
plot(acc_table.Time, acc_table.cDAQ1Mod1_ai2);
subplot(2,1,2);
plot(acc_table.Time, acc_table.cDAQ1Mod1_ai2*0.0104);