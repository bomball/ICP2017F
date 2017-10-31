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



