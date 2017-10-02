a1 = 2;   % Variables have to start with a letter 
 b = a1 ; % b is undefined so reversing this sets the value of b to a1 which is 2, and that uses the a1 variable
x = 2;
y = x + 4; % variables are case sensitive
pi = 4 * atan(1); % semicolon disrupted the multiplication
disp(pi);  %semicolon needed to finish disp statement
pi = 3.14159; %pi is used as a number in the next line not as a string
disp(tan(pi));
c = 4^3^2^3;
c = ((c-78564)/c + 32); %have to assign equation to some variable
year = 2017;
disp(['The year is ' , num2str(year)]); % to display 2017 it should convert it to a string with num2str
stuff = {'a' 'b' 4 21 'c'};
beginning = stuff(1); %matlab indices start at 1 not 0
End = stuff(5); %end is a keyword and should be avoided as a variable name
discount = 12; %the percentage sign is used for commentary and modulus
AMOUNT = 120.; %subtracting a number from no value doesn't work
amount = 120; %the dollar sign is a key character and shouldn't be used in a numerical value only in a string
and = 'duck'; %duck isnt defined
class = 'INF1100, gr 2'; %single quotes at both beginning and end
continue_ = x > 0;
fox = false; %comparing a word to boolean value requires usage in a conditional statement, but assigning it to a boolean value is just one equal sign
wolf = fox == true;
Persian = 'Persian is a human language';
Spanish = {'Spanish ' 'is ' ' another'  'language'};
disp(Persian);
disp(Spanish);
disp('Persian is not the same as Spanish');