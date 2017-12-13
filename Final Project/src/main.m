function main()
load('cells.mat');
finalprobsliceplot(cells);
hold off;
figure;
ObtainingErrorWithGompertzianFit();
figure;
ObtainingErrorWithGompertzianFit();
hold on;
RegressionModel();
saveas(gcf,'Gompertzian_Fit_with_Regression_Model.png'); %because its a
%combination of two scripts, it can only be saved in the main script
end
