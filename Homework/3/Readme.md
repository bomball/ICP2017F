1. 
**function gauss = getGaus(x,mu,sigma)** <br />
**disp('For the values you entered here is the result of the gaussian probability density function');** <br />
**ans = (1/(sqrt(2*pi) \* sigma)) \* exp(-0.5*((x-mu)/(sigma))^2);** <br />
**disp(ans);** <br />
**end** <br />

2.
```function egg = getegg()
answer = (67^(2/3))*3.7*(1.038^1/3)*log(0.76*(4-100)/(70-100))/(5.4*10^(-3)*pi*pi*(4*pi/3)^2/3);
disp(strcat('From the fridge its ', num2str(answer), ' seconds'));

answer = (67^(2/3))*3.7*(1.038^1/3)*log(0.76*(20-100)/(70-100))/(5.4*10^(-3)*pi*pi*(4*pi/3)^2/3);
disp(strcat('From the room its ', num2str(answer), ' seconds'));

end<br />```

3a).
```function polar = getPolar(inputCartesianStruct)
if(isfield((inputCartesianStruct),'x') && isfield((inputCartesianStruct),'y'))
    r = sqrt((inputCartesianStruct.x)^2 + (inputCartesianStruct.y)^2);
    phi = acos(inputCartesianStruct.x/r);
    polar = struct;
    polar.r = r;
    polar.phi = phi;
else
    polar = "Please make sure the input is a structure with fields 'x' and 'y'";
end
end```

3b).
```function cartesian = getCart(inputPolarStruct)
if(isfield((inputPolarStruct),'r') && isfield((inputPolarStruct),'phi'))
    x = inputPolarStruct.r*cos(inputPolarStruct.phi);
    y = inputPolarStruct.r*sin(inputPolarStruct.phi);
    cartesian = struct;
    cartesian.x = x;
    cartesian.y = y;
else
    cartesian = "Please make sure the input is a structure with fields 'r' and 'phi'";
end
end```

4.




