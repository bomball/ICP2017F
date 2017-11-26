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

a)
function fetchDataFromWeb()
data = str2num(webread('http://www.shahmoradi.org/ICP2017F/homework/5-problems/triggers.txt'));
fileID = fopen('triggers.txt','w');
fprintf(fileID, '%5.0d\n',data);
end

b)
