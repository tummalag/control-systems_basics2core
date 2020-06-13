clc;clear all;
m = 1; %kg 
g = 9.8; %m/sec^2
l = 1; %m
dt = 0.01;
T = 0:dt:10;
amplitude = 1;
theta = pi/60;  %radians
theta_d = 0;
theta_dd = 0;


for k = 1:length(T)+1
    theta_dd(k+1,1) = -g/l*sin(theta(k,1));
    theta_d(k+1,1) = theta_d(k,1)+ theta_dd(k+1,1)*dt;
    theta(k+1,1) = theta(k,1) + theta_d(k+1,1)*dt;
end

figure(1)
plot(theta,":r")
hold on
plot(theta_d,"--g")
plot(theta_dd,"-b")
hold off
legend("theta","theta_d","theta_dd")