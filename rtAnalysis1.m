clear all;
conn = mysql('open','localhost','root');
mysql('use rt_test');
[bladderOverlap, bladderCentroid, bladderDistanceV50, bladderDistanceV75, bladderDistanceV90, bladderDoseV50, bladderDoseV75, bladderDoseV90] = mysql('SELECT PercentageOverlap, Distance, V50Distance, V75Distance, V90Distance, D50, D75, D90 FROM volume_distance WHERE ROIName="Bladder"');
[rectumOverlap, rectumCentroid, rectumDistanceV50, rectumDistanceV75, rectumDistanceV90, rectumDoseV50, rectumDoseV75, rectumDoseV90] = mysql('SELECT PercentageOverlap, Distance, V50Distance, V75Distance, V90Distance, D50, D75, D90 FROM volume_distance WHERE ROIName="Rectum"');
mysql('close');

figure1 = figure;
scatter(bladderOverlap, bladderDoseV50);
title('Bladder - Dose (D50) Versus Overlap with the PTV');
xlabel('Overlap between the Bladder and the PTV (%)');
ylabel('Dose to 50% of the Bladder (Gy)');
titleHandle = get(gca, 'title');
set(titleHandle, 'FontName', 'Arial', 'FontSize', 16, 'FontWeight', 'bold');
xlabelHandle = get(gca, 'xlabel');
set(xlabelHandle, 'FontName', 'Arial', 'FontSize', 14, 'FontWeight', 'bold');
ylabelHandle = get(gca, 'ylabel');
set(ylabelHandle, 'FontName', 'Arial', 'FontSize', 14, 'FontWeight', 'bold');
saveas(figure1,'/Users/ruchi/Documents/IPI/spie/2013/analysis/Bladder D50 vs Overlap.png');

% figure2 = figure;
% scatter(bladderDistanceV90, bladderDoseV75);
% title('Bladder - Dose (D75) Versus R90');
% xlabel('Distance between 90% of the Bladder and the PTV (mm)');
% ylabel('Dose to 75% of the Bladder (Gy)');
% titleHandle = get(gca, 'title');
% set(titleHandle, 'FontName', 'Arial', 'FontSize', 16, 'FontWeight', 'bold');
% xlabelHandle = get(gca, 'xlabel');
% set(xlabelHandle, 'FontName', 'Arial', 'FontSize', 14, 'FontWeight', 'bold');
% ylabelHandle = get(gca, 'ylabel');
% set(ylabelHandle, 'FontName', 'Arial', 'FontSize', 14, 'FontWeight', 'bold');
% saveas(figure2,'/Users/ruchi/Documents/IPI/spie/2013/analysis/Bladder D75 vs R90.png');
% 
% figure3 = figure;
% scatter(bladderDistanceV90, bladderDoseV90);
% title('Bladder - Dose (D90) Versus R90');
% xlabel('Distance between 90% of the Bladder and the PTV (mm)');
% ylabel('Dose to 90% of the Bladder (Gy)');
% titleHandle = get(gca, 'title');
% set(titleHandle, 'FontName', 'Arial', 'FontSize', 16, 'FontWeight', 'bold');
% xlabelHandle = get(gca, 'xlabel');
% set(xlabelHandle, 'FontName', 'Arial', 'FontSize', 14, 'FontWeight', 'bold');
% ylabelHandle = get(gca, 'ylabel');
% set(ylabelHandle, 'FontName', 'Arial', 'FontSize', 14, 'FontWeight', 'bold');
% saveas(figure3,'/Users/ruchi/Documents/IPI/spie/2013/analysis/Bladder D90 vs R90.png');

figure4 = figure;
scatter(rectumOverlap, rectumDoseV50);
title('Rectum - Dose (D50) Versus Overlap with the PTV');
xlabel('Overlap between the Rectum and the PTV (%)');
ylabel('Dose to 50% of the Rectum (Gy)');
titleHandle = get(gca, 'title');
set(titleHandle, 'FontName', 'Arial', 'FontSize', 16, 'FontWeight', 'bold');
xlabelHandle = get(gca, 'xlabel');
set(xlabelHandle, 'FontName', 'Arial', 'FontSize', 14, 'FontWeight', 'bold');
ylabelHandle = get(gca, 'ylabel');
set(ylabelHandle, 'FontName', 'Arial', 'FontSize', 14, 'FontWeight', 'bold');
saveas(figure4,'/Users/ruchi/Documents/IPI/spie/2013/analysis/Rectum D50 vs Overlap.png');

% figure5 = figure;
% scatter(rectumDistanceV90, rectumDoseV75);
% title('Rectum - Dose (D75) Versus R90');
% xlabel('Distance between 90% of the Rectum and the PTV (mm)');
% ylabel('Dose to 75% of the Rectum (Gy)');
% titleHandle = get(gca, 'title');
% set(titleHandle, 'FontName', 'Arial', 'FontSize', 16, 'FontWeight', 'bold');
% xlabelHandle = get(gca, 'xlabel');
% set(xlabelHandle, 'FontName', 'Arial', 'FontSize', 14, 'FontWeight', 'bold');
% ylabelHandle = get(gca, 'ylabel');
% set(ylabelHandle, 'FontName', 'Arial', 'FontSize', 14, 'FontWeight', 'bold');
% saveas(figure5,'/Users/ruchi/Documents/IPI/spie/2013/analysis/Rectum D75 vs R90.png');
% 
% figure6 = figure;
% scatter(rectumDistanceV90, rectumDoseV90);
% title('Rectum - Dose (D90) Versus R90');
% xlabel('Distance between 90% of the Rectum and the PTV (mm)');
% ylabel('Dose to 90% of the Rectum (Gy)');
% titleHandle = get(gca, 'title');
% set(titleHandle, 'FontName', 'Arial', 'FontSize', 16, 'FontWeight', 'bold');
% xlabelHandle = get(gca, 'xlabel');
% set(xlabelHandle, 'FontName', 'Arial', 'FontSize', 14, 'FontWeight', 'bold');
% ylabelHandle = get(gca, 'ylabel');
% set(ylabelHandle, 'FontName', 'Arial', 'FontSize', 14, 'FontWeight', 'bold');
% saveas(figure6,'/Users/ruchi/Documents/IPI/spie/2013/analysis/Rectum D90 vs R90.png');