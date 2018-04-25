#Ask for numbers to compute area and perimeter and circumference
#By Aisha Jackson
#10/18/14

#!/usr/bin/python

import math #import math function


print "Hello user! First we are going to compute the area and perimeter of a rectangle \n"

length = int(input("Please enter the length of the rectangle. \n")) #length of rectangle


width = int(input( "Please enter the width of the rectangle. \n")) #width of rectangle


perimeter = length + length + width + width; #perimeter and area
area = length * width;

#output the perimeter and area
print "The perimeter of the rectangle is " + str(perimeter) + " and the area of the rectangle is " + str(area)

print "Next, we are going to compute the area of a square. \n"

edge = int(input("Please enter the edge length of the square. \n")) #length of square


sqarea = edge * edge; #area of a square

#output the area
print "The area of the square is " + str(sqarea)

print "Last, we are going to compute the circumference and area of a circle. \n"

radius = int(input( "Please enter the radius of the circle. \n" ))#radius of a circle

circum = 2 * radius * math.pi; #calculate circumference and area
circarea = radius ** 2 * math.pi;

#output the circumference
print "The circumference of the circle is " + str(circum) + " and the area is " + str(circarea)
