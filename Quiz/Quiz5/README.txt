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
function output = robustWebRead(inputstring)
    disp('Reading data from the web address...');
    try 
        output = webread(inputstring);
        disp('Done.');
    catch
        error('Warning: The requested web address does not exist! Gracefully exiting... ');
    end
end

3.

gca is a handle to a current axis, on which you can set the axis to a scale or to a certain interval

gcf is a handle to a current figure, which is the window on which the graph exists, so for example setting xcale to log with gcf will present the same results as gca, except all the values will be reduced by a factor. In example 1 this means the scale  goes from 1 to 10 all times 10^5
