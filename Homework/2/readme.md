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
Typing in ```f = ['abcd'] ``` assigns the value for the variable f as 1 x 4 array of 4 characters and is identical to the variable e
Typing in ```g = {'a' 'b' 'c' 'd'} ``` assigns the value for the variable g as 1 x 4 array of values <br />
Typing in ```h = { a b c d} ``` constructs an array h of the variables a, b, c, and d <br />
Typing in ``` whos d e f g h ``` inficates the name, number of bytes, class, and attribbutes of the variables d, e, f, g,h <br /> <br />

2.
Casting a larger number than the maximum value just changes its value to the maximum value. For example casting the number 999  to an int8 will return its maximum value which is 127, and similarly casting the number -999 to an int8 will return the next closest int8 value which is the int8 minimum value which is -128. <br /> <br />
The maximum value of int16 can be found through intmax('int16') which returns 32767, or 2^15 - 1 because one digit is used to store  the sign of the number and the numbers start at 0 so the maximum number is one less than 2^15 <br /> <br />
The maximum value of int32 can be found just by intmax because that is the default function for intmax or by intmax('int32') both of which give you 2147483647 or 2^31 - 1 for the same reasons as for the maximum 16 bit number  <br /> <br />

3.
Typing in ``` 1\2 ``` gives  you 2 divided by 1 which is 2 <br />
Typing in ``` 1/2 ``` gives you 1/2 which is 0.5000    (Side Note: both 1\2 and 1/2 are stored in class double) <br />
Typing in ``` int8(1/2) ``` gives you 1/2 as an 8 bit integer which is 1, because it rounds any decimal values in converting to an integer so 0.5 or larger rounds up to 1, which is important in simulation usage <br />
Typing in ``` int8(1/3) ``` gives you 1/3 as an 8 bit integer which is 0, because it rounds any decimal values in converting to an integer so 0.4999999999999999 or smaller rounds down to 0 <br />
Typing in ``` -5^2 ``` gives you -25 because without parenthesis, PEMDAS defaults to exponents so 5^2 happens first so we get 25 then times a -1 to get -25 <br />
Typing in ``` (-5)^2 ``` gives you 25 because PEMDAS does parenthesis first, then exponents and so -5 * -5 is a positive 25 <br />
Typing in ``` 10 - 6/2``` gives you 7 because PEMDAS, so division first then subtraction <br />
Typing in ``` 5*4/2*3 ``` gives you 30 because PEMDAS, and since multiplication and division have the same priority level it goes from left to right <br /><br />

Typing in ``` 


