alpha = 0.2;
beta = 0.2;
gamma = 5.7;

% alpha = 0.1;
% beta = 0.1;
% gamma = 14;

dt = 0.01;
t = 10000;

x0 = 0.5164;
y0 = 0.4568;
z0 = 0.8476;

[x,y,z] = Dynamical_Flow([x0;y0;z0],alpha,beta,gamma,dt,t);

figure(1);
% plot3(x,y,z)

%%%%TESTING LYAPUNOV IN 3D%%%%%%%
lyapunov3d = lyapunov_exponent3d(t-100,t, alpha,beta,linspace(0.5,1.5,t), x0, y0, z0);
plot(linspace(0.5,1.5,t),lyapunov3d)