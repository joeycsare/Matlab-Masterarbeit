clear all
clc
d = daqlist("ni");
d{1, "DeviceInfo"}
dq = daq("ni")
dq.Rate = 5000;
x_ch = addinput(dq,"cDAQ1Mod1", "ai0","Voltage")
y_ch = addinput(dq,"cDAQ1Mod1", "ai1","Voltage")
z_ch = addinput(dq,"cDAQ1Mod1", "ai2","Voltage")

acc_table = read(dq, seconds(10));

x_acc_table = timetable(acc_table.cDAQ1Mod1_ai0,RowTimes=acc_table.Time);
y_acc_table = timetable(acc_table.cDAQ1Mod1_ai1,RowTimes=acc_table.Time);
z_acc_table = timetable(acc_table.cDAQ1Mod1_ai2,RowTimes=acc_table.Time);

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
plot(acc_table.Time, acceleration_z);

