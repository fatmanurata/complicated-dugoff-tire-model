clear; clc; close all;

% --- Parametreler ---
model_name = "C_Dugoff_Tire_Model"; % Simulink dosyanın adı
Fz = 3000; 
Cx = 50000; 
Cy = 30000; 
mu = 0.85;

figure('Color', 'w', 'Position', [100, 100, 1100, 450]);

%first
subplot(1,2,1); hold on;
s_vec = 0:0.01:1; 
alphadeg = 5; 
alpha = alphadeg * pi/180;

fx_res = []; 
fy_res = [];
for s = s_vec
    out = sim(model_name, 'StopTime', '0');
    fx_res = [fx_res, out.Fx(1)];
    fy_res = [fy_res, out.Fy(1)];
end
plot(s_vec, fx_res, 'b', 'LineWidth', 2);
plot(s_vec, fy_res, 'g', 'LineWidth', 2);
grid on; xlabel('s (Slip Ratio)'); ylabel('Force [N]');
title(sprintf('Complicated Dugoff: F vs s (\\alpha=%.1f°)', alphadeg));
legend('F_x', 'F_y');

%second
subplot(1,2,2); hold on;
alpha_deg = 0:0.5:20; 
s_input = 0.1;
s = s_input; 

fx_res = []; 
fy_res = [];
for a_deg = alpha_deg
    alpha = a_deg * pi/180;
    out = sim(model_name, 'StopTime', '0');
    fx_res = [fx_res, out.Fx(1)];
    fy_res = [fy_res, out.Fy(1)];
end
plot(alpha_deg, fx_res, 'b', 'LineWidth', 2);
plot(alpha_deg, fy_res, 'g', 'LineWidth', 2);
grid on; xlabel('\alpha (Slip Angle) [deg]'); ylabel('Force [N]');
title(sprintf('Complicated Dugoff: F vs alpha (s = %.2f)', s_input));
legend('F_x', 'F_y');