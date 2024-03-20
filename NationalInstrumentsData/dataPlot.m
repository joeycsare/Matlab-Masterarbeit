acceleration_x = data.cDAQ1Mod1_ai0*0.0104;
acceleration_y = data.cDAQ1Mod1_ai1*0.0104;
acceleration_z = data.cDAQ1Mod1_ai2*0.0104;

figure 
subplot(2,1,1);
plot(data.Time, data.cDAQ1Mod1_ai0);
subplot(2,1,2);
plot(data.Time, acceleration_x);
y
figure
subplot(2,1,1);
plot(data.Time, data.cDAQ1Mod1_ai1);
subplot(2,1,2);
plot(data.Time, acceleration_y);

figure
subplot(2,1,1);
plot(data.Time, data.cDAQ1Mod1_ai2);
subplot(2,1,2);
plot(data.Time, acceleration_z);