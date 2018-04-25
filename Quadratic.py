#Quadratic Equation Program- Given the roots solve the quadratic equation
#By Aisha Jackson
#10/18/14

#!/usr/bin/python

import math #import math function

print "Hello user! This program will calculate the quadratic equation by using the quadratic formula. \n"

a = int(input("Please enter an integer value for a. \n")) #Ask for a


b = int(input("Please enter an integer value for b. \n")) #ask for b

c = int(input("Please enter an integer value for c. \n")) #ask for c


b2 = b ** 2;
b22 = 4 * a * c;
rad = math.sqrt(b2 - b22);
negb = -1 * b;
top = negb + rad; #calculate the top part of the quadratic formula ^
top2 = negb - rad;
bottom = 2 * a;#calculate the bottom portion ^
quad = top / bottom;
quad2 = top2/ bottom; #calculate the quadratic formula

#output the roots
print "The first root is "+ str(quad)
print "The second root is " + str(quad2)
