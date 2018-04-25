#Ask for numbers to display the next ten numbers, squares, square roots, and cubes
#By Aisha Jackson
#10/18/14

#!/usr/bin/python

import math #import math function

print "Hello user! This program is going to show some things relative to the number you choose! \n"

num = int(input("Please enter any integer. \n")) #ask for the number

count = 1
while count < 11: #get the number, square, cube and square root
    num = num + 1
    num2 = num ** 2
    num3 = num ** 3
    num4 = math.sqrt (num)
    print "NUMBER: " + str(num) + " SQUARE: " + str(num2) + " CUBE: " + str(num3) + " SQUARE ROOT: " + str(num4)
    count = count + 1
