
%tiledlayout(1,2,3)
%ax1 = nexttile;
figure;
%plot(ax1,out.ScopeData_torques.time(1:13066587),out.ScopeData_torques.signals(1).values(1:13066587));
plot(out.ScopeData_torques.time(1:13066587),out.ScopeData_torques.signals(1).values(1:13066587));
hold on;
plot(out.ScopeData_torques.time(1:13066587),out.ScopeData_torques.signals(2).values(1:13066587));
plot(out.ScopeData_torques.time(1:13066587),out.ScopeData_torques.signals(3).values(1:13066587));
plot(out.ScopeData_torques.time(1:13066587),out.ScopeData_torques.signals(4).values(1:13066587));
plot(out.ScopeData_torques.time(1:13066587),out.ScopeData_torques.signals(5).values(1:13066587));
plot(out.ScopeData_torques.time(1:13066587),out.ScopeData_torques.signals(6).values(1:13066587));
%plot(out.ScopeData_torques.time(7001:10001),out.ScopeData_torques.signals(7).values(7001:10001));

title('Simulation Joint Torques')
xlabel('time in s')
ylabel('torque in Nm')
xlim([0 0.5])
ylim([-20 40])
legend('joint 1','joint 2','joint 3','joint 4','joint 5','joint 6','joint 7')

figure;
%ax2 = nexttile;
%plot(ax2,out.ScopeData_torques.time(1:13066587),out.ScopeData_tcp.signals(1).values(1:13066587));
plot(out.ScopeData_torques.time(1:13066587),out.ScopeData_tcp.signals(1).values(1:13066587));
hold on;
plot(out.ScopeData_torques.time(1:13066587),out.ScopeData_tcp.signals(2).values(1:13066587));
plot(out.ScopeData_torques.time(1:13066587),out.ScopeData_tcp.signals(3).values(1:13066587));


title('Simulation TCP deviation')
xlabel('time in s')
ylabel('deviation in mm')
xlim([0 0.5])
%ylim([-20 40])
legend('error x','error y','error z')

figure;
%ax3 = nexttile;
%plot(ax3,out.ScopeData_torques.time(1:13066587),out.ScopeData_force.signals(1).values(1:13066587));
plot(out.ScopeData_torques.time(1:13066587),out.ScopeData_force.signals(1).values(1:13066587));
hold on;
plot(out.ScopeData_torques.time(1:13066587),out.ScopeData_force.signals(2).values(1:13066587));
plot(out.ScopeData_torques.time(1:13066587),out.ScopeData_force.signals(3).values(1:13066587));


title('Simulation Process Force ')
xlabel('time in s')
ylabel('Force in N')
xlim([0 0.5])
%ylim([-20 40])
legend('x direction','y direction','z direction')