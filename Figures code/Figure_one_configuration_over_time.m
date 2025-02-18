%% Creation of figures showing the simulation unfolding over steps for a single vector of parameters
% it first requires to run the model (file run.m)
% it creates a series of figures showing a selection of variables over
% simulation steps
% e.g. Fig. 4 in the working paper "Believe me when I say green".

end_time=T-R;
transient=4; 

set(groot,'defaultAxesTickLabelInterpreter','latex');

fig1=figure('DefaultAxesFontSize',16);
plot(sens_res(1,1).tax_target,'LineWidth',1)
xlim([transient end_time])
xticks([transient,80,160,240,end_time])
xticklabels({'2020','2040','2060','2080','2100'})
set(fig1, 'units', 'centimeters', 'pos', [0 0 12 7])
pos = get(fig1,'Position');
set(fig1,'PaperPositionMode','Auto','PaperUnits','centimeters','PaperSize',[pos(3), pos(4)])
set(gcf, 'renderer', 'painters');
%print(gcf, '-dpdf', 'tax_fc.pdf');


fig2=figure('DefaultAxesFontSize',16);
plot(sens_res(1,1).n,'LineWidth',1) 
xlim([transient end_time])
xticks([transient,80,160,240,end_time])
xticklabels({'2020','2040','2060','2080','2100'})
set(fig2, 'units', 'centimeters', 'pos', [0 0 12 7])
pos = get(fig2,'Position');
set(fig2,'PaperPositionMode','Auto','PaperUnits','centimeters','PaperSize',[pos(3), pos(4)])
set(gcf, 'renderer', 'painters');
%print(gcf, '-dpdf', 'n_fc.pdf');
 
fig3=figure('DefaultAxesFontSize',16);
plot(sens_res(1,1).chi_agg,'LineWidth',1) 
hold on 
plot(sens_res(1,1).chi_b,'LineWidth',1);
plot(sens_res(1,1).chi_s,'LineWidth',1);
xlim([transient end_time])
xticks([transient,80,160,240,end_time])
xticklabels({'2020','2040','2060','2080','2100'})
lh=legend({'$\chi$','$\chi_b$','$\chi_s$'},'location','southeast','Interpreter','latex');
set(fig3, 'units', 'centimeters', 'pos', [0 0 12 7])
pos = get(fig3,'Position');
set(fig3,'PaperPositionMode','Auto','PaperUnits','centimeters','PaperSize',[pos(3), pos(4)])
set(gcf, 'renderer', 'painters');
%print(gcf, '-dpdf', 'chi_fc.pdf');
 
 
fig4=figure('DefaultAxesFontSize',16);
plot(sens_res(1,1).kappa,'LineWidth',1) 
xlim([transient end_time])
xticks([transient,80,160,240,end_time])
xticklabels({'2020','2040','2060','2080','2100'})
set(groot,'defaultAxesTickLabelInterpreter','latex');
set(fig4, 'units', 'centimeters', 'pos', [0 0 12 7])
pos = get(fig4,'Position');
set(fig4,'PaperPositionMode','Auto','PaperUnits','centimeters','PaperSize',[pos(3), pos(4)])
set(gcf, 'renderer', 'painters');
%print(gcf, '-dpdf', 'kappa_fc.pdf');
