 1. All 3 scripts have a very slight modification, After the if statement and the else if statement.

a) FOR LOOP

function convert = convertTempFor(InVec,statement)
convert = zeros(1,length(InVec));
if(strcmp(statement,'C2F')==1)
    for i=1:length(InVec)
        convert(1,i) = 1.8*InVec(1,i)+32;
    end
 
elseif(strcmp(statement,'F2C')==1)
    for i=1:length(InVec)
        convert(1,i) = 5*(InVec(1,i)-32)/9;
    end
else
    error('Input must be C2F or F2C');
end
end

b) WHILE LOOP

function convert = convertTempWhile(InVec,statement)
convert = zeros(1,length(InVec));
if(strcmp(statement,'C2F')==1)
    i=1;
    while(i~=length(InVec)+1)
        convert(1,i) = 1.8*InVec(1,i)+32;
        i=i+1;
    end

elseif(strcmp(statement,'F2C')==1)
     i=1;
    while(i~=length(InVec)+1)
        convert(1,i) = 5*(InVec(1,i)-32)/9;
        i=i+1;
    end
else
    error('Input must be C2F or F2C');
end
end

c) VECTORIZATION

function convert = convertTempVec(InVec,statement)
convert = zeros(1,length(InVec));
if(strcmp(statement,'C2F')==1)
    i = 1:length(InVec);
    convert(1,i) = 1.8*InVec(1,i)+32;
elseif(strcmp(statement,'F2C')==1)
  	i = 1:length(InVec);
    convert(1,i) = 5*(InVec(1,i)-32)/9;
else
    error('Input must be C2F or F2C');
end
end

2. starterdata = [-20, -15, -10, -5, 0, 5, 10, 15, 20, 25, 30, 35, 40];
>> tic, convertTempFor(starterdata,'C2F') ,toc

ans =

    -4     5    14    23    32    41    50    59    68    77    86    95   104

Elapsed time is 0.003072 seconds.
>> tic, convertTempWhile(starterdata,'C2F') ,toc

ans =

    -4     5    14    23    32    41    50    59    68    77    86    95   104

Elapsed time is 0.002207 seconds.
>> tic, convertTempVec(starterdata,'C2F') ,toc

ans =

    -4     5    14    23    32    41    50    59    68    77    86    95   104

Elapsed time is 0.001674 seconds.

So, Vectorization is faster than a while condition which is faster than a for loop. 
This is because rather than looping, it uses converts the input array into a column vector,
which allows it to perfrom an operation to all elements in the vector at once.

3. function statement = extractLetter(cellofchars)
if(isa(cellofchars,'cell'))
    arr = [];
    length = size(cellofchars);
    for i=1:length(2)       % The second element of the size array is the number of columns
        arr = [arr cellofchars{i}];
    end
 statement = strjoin(arr,''); % This, unlike strcat won't remove the trailing white spaces which are necessary

        %elementlength = size(List{i})
        %for j=1:elementlength(2)
        %disp(char(statement(i
else
    error('Input must be a cell array');
end
end

4. The code takes the number 2.0 and takes its square root
and then squares the result which it outputs.
Then it takes the number 2.0 and takes its takes its square root 
two times and then squares the result two times, which it outputs.
This process continues until it takes the number 2.0, square roots it n times and then squares the result n times.

**The result is more different from the original number as the number of iterations increase, 
due to a precision-roundoff issue.

When the code is run, it starts by taking the square root of 2.
Since the square root of 2 is irrational, its exact value has infinitely many digits,
but sqrt is a double method which restricts its size to 8 bytes(16 decimal places after a one digit number)
which involves rounding that value. When that value is squared, again it must round once more.
This value is very close but slightly off the number 2, giving 2.000000000000004 instead.

So, when it takes the square root twice and then squares it twice the result is even more deviated
from the original number, giving 1.9999999999999996. After many iterations when it square roots 51
times and then squares 51 times the answer is 1.6487212645509468. But on the 52nd iteration when it
square roots the number '2' 52 times it gets the number '1', so when it squares '1' 52 times it is
still '1'. Essentially after square rooting too many times then answer is so close to '1' that
when it gets cut off due to the size limit of the double variable type, it displays '1'.

5. In this code the only way 1.0 ~= 1.0 + eps could be false is if eps = 0. 
But in the code, in each iteration eps is divided by 2, so eps starts out at 1 and becomes 0.5,
then 0.25, then 0.125 and so on. Eventually eps is so small (1.1102e-16) that when its added to '1.0'
and that value is truncated to a certain number of decimal places (because a double precision
variable is only 8 bytes or 16 decimal places after a one digit number), the result is just
1.0000000000000000, and that value is equivalent to 1.0, so it breaks out of the while loop 
and displays the final value for the variable eps.

6. 
function largest = getLargestprime(number)
for i=number:-1:1
    if isprime(i)
        largest = i;
        break;
    end
end

7. 
