clear all
clc
d = daqlist("ni");
d{1, "DeviceInfo"}
dq = daq("ni")
dq.Rate = 5000;
x_ch = addinput(dq,"cDAQ1Mod1", "ai0","Voltage")
y_ch = addinput(dq,"cDAQ1Mod1", "ai1","Voltage")
z_ch = addinput(dq,"cDAQ1Mod1", "ai2","Voltage")

data = read(dq, seconds(10));

xdata = timetable(data.cDAQ1Mod1_ai0,RowTimes=data.Time);
ydata = timetable(data.cDAQ1Mod1_ai1,RowTimes=data.Time);
zdata = timetable(data.cDAQ1Mod1_ai2,RowTimes=data.Time);

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

