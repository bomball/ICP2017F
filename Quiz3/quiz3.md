1. The * is matrix multiplication, while .* is direct multiplication

Basically if a = [1,2;3,4] and b = [5,6;7,8]
then * is matrix multiplication, which is the row element of a times the column element of b, so 1*5 + 2*7 = 5 + 14 = 19, 
and in that way each row element of a is multiplied by the column element of b to give a 2 x 2 matrix 
a*b =    19    22
         43    50
         
For a.*b it is direct multiplication, so the row element of a times the column element of b, so 1*5 = 5, and 2*6 = 12 and so on..

a.*b =  5    12
        21    32



2. Since a and b are both 1 x 3 vectors, transposing b would make the matrix multiplication give a vector product
so a*b' gives the dot product

3. function test = testString()
  prompt = 'tell me what your string is';
  mystring = input(prompt); 
   if(mystring.equals('MATLAB'))
        test = true;
        disp test;
   else
        test = false;
        disp test;
end


4. The or operator '|' is not as powerful as '||', because the '||' statement improves code efficiency by seeing if the first statement is true or not.
If the first statement is true in || it automatically outputs true without looking at the next statement which saves time.
In | it has to look at both statements to verify. Also, || is used for comparing vectors that are a logical 1, because in MATLAB anything that is not 
a zero is a logical 1.

5. Instead of x=a/b>10.0 rewrite it as  x=a*b>10.0 

6. A structure array is more efficient because if you only have to store a students name and grade, there is essentially only two arrays you are working with,
and you loop through the grade array to get the class average. They array of structures would need multiple arrays for each field, a waste of computational power.

7. function root = getRoot(a,b,c)
prompt = 'What is the first number';
a = input(prompt);
prompt = 'What is the second number';
b = input(prompt);
prompt = 'What is the third number';
c = input(prompt);
disp (((-1*b)+ sqrt(b*b-4*a*c))/(2*a));
disp (((-1*b)- sqrt(b*b-4*a*c))/(2*a));
end

8. function integral = getIntegral (a,b,c)
prompt = 'What is the first number';
a = input(prompt);
prompt = 'What is the second number';
b = input(prompt);
prompt = 'What is the third number';
c = input(prompt);
 f = @(x,c) x*x+c*x+1
        Q = integral(@(x)f(x,5),a,b)
    disp(Q);
    end
    
9.function y = getFac(n_int)
    n_int = input('Your number');
    if class(n_int) == double;
        
        Fac(n_int) = Fac(n_int-1)*n_int;
        Fac(1) = 1;
end 
