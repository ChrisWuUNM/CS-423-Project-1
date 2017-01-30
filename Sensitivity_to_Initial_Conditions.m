ro = 1.29;%initial ro
gamma = 0.3;%initial

n = 100; %number of time steps
ts = linspace(1,n,n);

%initial conditions 1 and holder variables
x0 = 0.66;
y0 = 0.11;

%output of the first parameters
f0 = zeros(n,1);
f0(1) = yt0;

%initial conditions 2 and holder variables
x1 = 0.13;
y1 = 0.66;

%output of the second parameters
f1 = zeros(n,1);
f1(1) = yt1;

for t=1:n
    x0 = xt0;
    y0 = yt0;
    xt0 = ro - x0^2 + gamma*y0;
    yt0 = x0;
    
    x1 = xt1;
    y1 = yt1;
    xt1 = ro - x1^2 + gamma*y1;
    yt1 = x1;
    
    f0(t) = yt0;
    f1(t) = yt1;
end

figure(1)
plot(ts,f0,ts,f1)
xlabel('time steps')
ylabel('y values')
legend('x_0 = 0.66, y_0 = 0.11', 'x_0 = 0.13, y_0 = 0.66')
hold on;