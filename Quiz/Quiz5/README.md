1. 
chainfile = importdata('chain.txt');
data = chainfile.data;
y = data(:,4);
x = linspace(10^0,10^5,length(data));
plot(x,y,'-r','LineWidth',2);
xlim([10^0 10^6]);
box on;
set(gca,'xscale','log');


2. 
