1. 
**function gauss = getGaus(x,mu,sigma)** <br />
**disp('For the values you entered here is the result of the gaussian probability density function');** <br />
**ans = (1/(sqrt(2*pi) \* sigma)) \* exp(-0.5*((x-mu)/(sigma))^2);** <br />
**disp(ans);** <br />
**end** <br />

2.
```function egg = getegg()<br />
answer = (67^(2/3))*3.7*(1.038^1/3)*log(0.76*(4-100)/(70-100))/(5.4*10^(-3)*pi*pi*(4*pi/3)^2/3);<br />
disp(strcat('From the fridge its ', num2str(answer), ' seconds'));<br />

answer = (67^(2/3))*3.7*(1.038^1/3)*log(0.76*(20-100)/(70-100))/(5.4*10^(-3)*pi*pi*(4*pi/3)^2/3);<br />
disp(strcat('From the room its ', num2str(answer), ' seconds'));<br />

end<br />```


