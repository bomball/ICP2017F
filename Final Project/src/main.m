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
end
