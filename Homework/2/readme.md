1.
Typing in  bash ``` a = 1 ``` assigns the value for the variable a as the 8byte int number 1. <br />
Typing in ```b = 'x'``` assigns the value for the variable b as the 2byte char letter x. <br />
Typing in ```c = true``` assigns the value for the variable c as the 1byte logical value true. <br />
Typing in ```whos a b c``` indicates the name of the variables a, b, and c as well as lists the number of bytes for each variable, the class of each variable, and any attributes it may have(which they don't have). <br />
Typing in ```a == c``` determines if the variable a is equal to the variable c. Since a is the number 1 and c is the logical value true or rather the 1 * 1 array element of value it compares the two variables and since the number 1 is true and the logical value 1 is also true it outputs a logical 1. <br />
Typing in ``` a+c ``` adds the variables a and c which are both of value 1 even though one is a number and the other is a logical, so 1 + 1 = 2 which is outputs <br />
Typing in ``` d = [1 2 3 4] ``` assigns the value for the variable d as  1 x 4 array of 4 numbers each of 8 bytes so 4 * 8 = totally 32 bytes <br />
Typing in ``` d = [1 2 3 4] ``` assigns the value for the variable d as  1 x 4 array of 4 numbers each of 8 bytes so 4 * 8 = totally 32 bytes <br />
Typing in ```e = ['a' 'b' 'c' 'd'] ``` assigns the value for the variable e as  1 x 4 array of 4 characters each of 2 bytes so 4 * 2 = totally 8 bytes <br />
Typing in ```f = ['abcd'] ``` assigns the value for the variable f as 1 x 4 regular array of 4 characters and is identical to the variable e
Typing in ```g = {'a' 'b' 'c' 'd'} ``` assigns the value for the variable g as 1 x 4 cell array of values <br />
Typing in ```h = { a b c d} ``` constructs a cell array h of the variables a, b, c, and d <br />
Typing in ``` whos d e f g h ``` inficates the name, number of bytes, class, and attribbutes of the variables d, e, f, g,h <br /> <br />

2.
Casting a larger number than the maximum value just changes its value to the maximum value. For example casting the number 999  to an int8 will return its maximum value which is 127, and similarly casting the number -999 to an int8 will return the next closest int8 value which is the int8 minimum value which is -128. <br /> <br />
The maximum value of int16 can be found through intmax('int16') which returns 32767, or 2^15 - 1 because one digit is used to store  the sign of the number and the numbers start at 0 so the maximum number is one less than 2^15 <br /> <br />
The maximum value of int32 can be found just by intmax because that is the default function for intmax or by intmax('int32') both of which give you 2147483647 or 2^31 - 1 for the same reasons as for the maximum 16 bit number  <br /> <br />

3.

Typing in ``` 1\2 ``` gives  you 2 divided by 1 which is 2 <br />
Typing in ``` 1/2 ``` gives you 1/2 which is 0.5000    (Side Note: both 1\2 and 1/2 are stored in class double) <br />
Typing in ``` int8(1/2) ``` gives you 1/2 as an 8 bit integer which is 1, because it rounds any decimal values in converting to an   integer so 0.5 or larger rounds up to 1, which is important in simulation usage <br />
Typing in ``` int8(1/3) ``` gives you 1/3 as an 8 bit integer which is 0, because it rounds any decimal values in converting to an integer so 0.4999999999999999 or smaller rounds down to 0 <br />
Typing in ``` -5^2 ``` gives you -25 because without parenthesis, PEMDAS defaults to exponents so 5^2 happens first so we get 25 then times a -1 to get -25 <br />
Typing in ``` (-5)^2 ``` gives you 25 because PEMDAS does parenthesis first, then exponents and so -5 * -5 is a positive 25 <br />
Typing in ``` 10 - 6/2``` gives you 7 because PEMDAS, so division first then subtraction <br />
Typing in ``` 5*4/2*3 ``` gives you 30 because PEMDAS, and since multiplication and division have the same priority level it goes   from left to right <br /><br />

4 a)

The first example is ``` a = {1,0;2,1} ``` for the variable a which is a 2 x 2 array which has 4 numbers, but each element is individually 8 bytes so there is 8 * 4 = 32 total bytes of data<br />
b is also the same  as a, its also a 2 x 2 array<br />
c is a 2 x 1 array<br />
d is either a 1 x 1 array or a 8 byte number
    <br /><br />

4 b)

Using the variables from part a, a + b  gives a 2 x 2 array adding each element from array a with that of array b
so that a + b = [1,0;2,1] + [-1,0;2,1] = [0,0;4,2]<br />
    
a .* b gives a 2 x 2 array from multiplying each element in the row of the matrix a with each element in the column of matrix b,        which is essentially how matrix multiplication works. The final answer is therefore [-1,0;4,1]<br />
     
a * b gives a 2 x 2 array from multiplying both arrays elementwise or in a dot product manner, so that you would multiply the row of    a with the row of b, which gives the answer [-1,0; 0,1]<br />
     
a * c is elementwise, and a is a 2 x 2 while c is a 2 x 1, so the final result is a 2 x 1 array. It starts out with the 1st row of       each array, and multiplies the first element of a with the first element of c and adds that to the second element of a with the         first element of c which goes into the result, then it proceeds to the next row. The answer is [3;8]<br />
     
a + c is adding two arrays of different sizes but it gives the final result as a 2 x 2 array. It adds the first column of a with the     only column of c, which becomes the first column of the result, then it adds the second column of a with the only column of c to get     the second column for the result which is [4,4; 3,3]<br />
     
a + d is adding two arrays of different sizes, but because d is just a number it increments each element in the array a by the         value d which is 5, so every value in the array a is added by 5 to create the resultant [6,5;7,6]<br />
     
a .* d is matrix multiplication so the rows of a are multiplied by the columns of d, but since d has only element it would be          simply **Scalar Multiplication** so each element in a is multiplied by d (which is 5) so the result is [5,0;10,5] <br />
     
a * d is dot product multiplication or row-wise which is the same as matrix multiplication when dealing with scalars, so the result    would still be  [5,0;10,5]<br /><br />
     
5.
     Three ways of tackling this problem < br />
     
      a =  diag([2,2,2],0)   This means the array [2,2,2] should be placed on the major or 0th diagonal of a new array <br />
     
      a =  2* eye([3,3])    This means I construct an 3 x 3 identity matrix (which has 1's on the major diagonal) and then i multiply every value in the matrix by the scalar quantity 2. <br />
      
      a = zeros(3); a(1,1) = 2; a(2,2) = 2; a(3,3) = 2     This essentially generates a 3 x 3 matrix full of zeroes and then three elements are changed from 0 to a 2 <br />

6. Found on the file [vishnu_fixed_the_code_full_of_errors](https://github.com/bomball/ICP2017F/blob/master/Homework/2/vishnu_fixed_the_script_full_of_errors.m)

7. <br/> 
![](https://github.com/bomball/ICP2017F/blob/master/Homework/2/Problem%20no%207.png "From Problem No 7") 
   
     
     
     
   
     
     







