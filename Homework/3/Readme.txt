1. 
function gauss = getGaus(x,mu,sigma)
disp('For the values you entered here is the result of the gaussian probability density function');
ans = (1/(sqrt(2*pi)*sigma))*exp(-0.5*((x-mu)/(sigma))^2);
disp(ans);
end

2.
function egg = getegg()
answer = (67^(2/3))*3.7*(1.038^1/3)*log(0.76*(4-100)/(70-100))/(5.4*10^(-3)*pi*pi*(4*pi/3)^2/3);
disp(strcat('From the fridge its ', num2str(answer), ' seconds'));
answer = (67^(2/3))*3.7*(1.038^1/3)*log(0.76*(20-100)/(70-100))/(5.4*10^(-3)*pi*pi*(4*pi/3)^2/3);
disp(strcat('From the room its ', num2str(answer), ' seconds'));
end<br />

3a).
function polar = getPolar(inputCartesianStruct)
if(isfield((inputCartesianStruct),'x') && isfield((inputCartesianStruct),'y'))
    r = sqrt((inputCartesianStruct.x)^2 + (inputCartesianStruct.y)^2);
    phi = acos(inputCartesianStruct.x/r);
    polar = struct;
    polar.r = r;
    polar.phi = phi;
else
    polar = "Please make sure the input is a structure with fields 'x' and 'y'";
end
end

3b).
function cartesian = getCart(inputPolarStruct)
if(isfield((inputPolarStruct),'r') && isfield((inputPolarStruct),'phi'))
    x = inputPolarStruct.r*cos(inputPolarStruct.phi);
    y = inputPolarStruct.r*sin(inputPolarStruct.phi);
    cartesian = struct;
    cartesian.x = x;
    cartesian.y = y;
else
    cartesian = "Please make sure the input is a structure with fields 'r' and 'phi'";
end
end

4. function list = getList(directory)
   if(isfield((directory),'name') && isfield((directory),'bytes'))
     length = size(directory);
     for i = 1:length
      disp( [directory(i).name ' has ' num2str(directory(i).bytes)  ' bytes of storage']);
     end
 
   else
    list = "Please make sure that the directory has a name field and a bytes field";
   end
end

5. 

function runner = fib()
flag = false;
while (flag == false)
    prompt = 'Please enter a non-negative integer or type stop:';
    number = input(prompt);
    if(isa(number,'numeric'))
        if(number < 0)
            disp('The input argument is not a non-negative integer!');
        else
            disp(strcat('fib(',num2str(number),') = ', num2str(getFib(number))));
        end
    elseif(strcmp(number,'stop')==1)
        flag = true;
    elseif (number == 1)
        runner = 'This is just a redundant code so that runner has some output';
    else
        disp('The input argument is not a non-negative integer!');
    end
end
end


function f = getFib(n)
 if (n==0)
     f = 0;
    % disp(699);
 elseif (n == 1)
     f = 1; 
     %disp(f);
 else
     f = getFib(n-1) + getFib(n-2);   
     %disp(f);
 end
end

6. 

function trianglearea = getTriangleArea(vertices)   
    if(isfield((vertices),'x') && isfield((vertices),'y'))
        x1 = vertices(1).x;
        x2 = vertices(2).x;
        x3 = vertices(3).x;
        y1 = vertices(1).y;
        y2 = vertices(2).y;
        y3 = vertices(3).y;
        %For convenience of actual function readibility
        trianglearea = 0.5*abs(x2*y3-x3*y2-x1*y3+x3*y1+x1*y2-x2*y1);
    else
        trianglearea = 'This is not an appropriate input';
    end
end

7. 

function prime = isPrime(number)
   if(number == 2)           % An easy base case
       prime = true;
   elseif(number<2 || mod(number,2)==0)  % Another easy base case
       prime = false;
   else
       prime = isdivisibleby(number,round(number/2));  % Most useful line of code for this function
  
end

function divisible = isdivisibleby(number,factor) %This function uses the true recursion to detect primeness
    if (factor == 1) % base case
        divisible = true;
    elseif(mod(number,factor)==0)
        divisible = false;
    else
        divisible = isdivisibleby(number,factor-1);
    end
end

8.




