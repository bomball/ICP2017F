1.) 
function output = Rand3Group()
rng(131313);    % same starting seed as actual
triples = randperm(99);  %array of numbers 1-99 randomized
fileID = fopen('students.csv');
mytable = readtable('students.csv');
output = cell(33,3);
row = 1;
col = 1;
for i = 1:99
  output{row,col} =  cell2mat(mytable{triples(i),2});
  if(row == 33)
    row = 1;
    col = col + 1;
  else
    row = row + 1;
  end
end
fclose(fileID);
xlswrite('groups.xlsx',output);
end


2.
function fetchDataFromWeb()
data = webread('http://www.shahmoradi.org/ICP2017F/homework/5-problems/triggers.txt');
data = strsplit(data,'\n');
dataDir = '.swift/';
mkdir(dataDir);
missingCounter = 0;
for i=1:length(data)
    
    try
       dataRepository = 'http://www.shahmoradi.org/ICP2017F/homework/5-problems/swift/';    %storing in swift folder in matlab dir
       filename = ['GRB', data{i}, '_ep_flu.txt'];
       dataURL = [dataRepository,filename];
       fileID = fopen([dataDir,filename],'w');
       fprintf(fileID, '%s',webread(dataURL));
       fclose(fileID);
    catch
       missingCounter = missingCounter + 1;
       disp(['The requested file does not exist on the web! skipping...', num2str(missingCounter)]);
    end
    
end
disp(['There are ' , num2str(missingCounter), ' missing files'])
end



function plotDataFromFile()
directory = dir('C:\Users\vishn\OneDrive\Documents\MATLAB\.swift');
success = 0;
data = [0,0];
     for i = 3:size(directory)
         if(directory(i).bytes>0)
             currentdata = readtable(['.swift/',directory(i).name]);
             try 
                 currarr = table2array(currentdata);
                 if(all(currarr(:,2)<0.0)) 
                     data = [data ; table2array(currentdata)];
                     success = success+1;
                 end
             catch
                 disp(['didnt recognize at', directory(i).name]);
             end
         end
     end
    
    scatter(exp(data(:,2)), data(:,1), 1,'red','filled','MarkerFaceAlpha',.1,'MarkerEdgeAlpha',.1);
   
    title('Plot of E_p_e_a_k vs Fluence for 650 Swift GRB events');
    xlabel('Fluence [ergs/cm^2]');
    set(gca,'xscale','log');
    xlim([1.0000e-08 1.0000e-02]);
    xticks([ 1.0000e-8 1.0000e-6 1.0000e-4 1.0000e-2]);
    
   
    ylabel('E_p_e_a_k');
    set(gca,'yscale','log');
    ylim([1.0000e0 1.0000e04]);

    disp(num2str(success));
end 

3. 

