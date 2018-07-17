vs_p = [0; 2; 3; 3.4; 3.8; 4; 4.4; 4.8; 5.2; 5.6; 6; 6.4; 6.8; 7.2; 7.6; 8; 8.4; 8.8; 9.2; 9.6; 10; 10.4; 10.8; 11.2; 11.6; 12; 12.4];
eps_p = [0; 0.002; 0.006; 0.008; 0.015; 0.016; 0.021; 0.024; 0.031; 0.036; 0.044; 0.05; 0.056; 0.064; 0.075; 0.08; 0.088; 0.10; 0.11; 0.12; 0.14; 0.165; 0.168; 0.175; 0.2; 0.21; 0.23];
sin_eps_p = sin(eps_p);

vs_n = [-10; -5.6; -5.2; -4.8; -4.4; -4; -3.8; -3.4; -3; -2];
eps_n = [-0.07; -0.027; -0.026; -0.024; -0.02; -0.017; -0.016; -0.012; -0.01; -0.005];
sin_eps_n = sin(eps_n);

vs_tot = [vs_n; vs_p];
sin_eps_tot = [sin_eps_n; sin_eps_p];

% tried on p1*x+p2; where p1 = 0.03278, p2 = -0.1853; I just interpolated
% to other values...
vs_tot_aug = [vs_tot; 12.8; 13.2; 13.6; 14; 14.4; 14.8; 15.2; 15.6; 16; 16.4; 16.8; 17.2; 17.6; 18; 18.4; 18.8; 19.2; 19.6; 20];
sin_eps_tot_aug = [sin_eps_tot; 0.2343; 0.2474; 0.2605; 0.2736; 0.2867; 0.2998; 0.3130; 0.3261; 0.3392; 0.3523; 0.3654; 0.3785; 0.3916; 0.4047; 0.4179; 0.4310; 0.4441; 0.4572; 0.4703];  

sin_eps_tot_aug_scaled = sin_eps_tot_aug/sin_eps_tot_aug(end);

plot(vs_tot_aug, sin_eps_tot_aug_scaled);