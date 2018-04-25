#Convert to celcius and farenheit
#By Aisha Jackson
#10/18/14

#!/usr/bin/python

print "Hello user! This program is going to convert the temperature to Celsius or Fahrenheit. \n"

cel = int(input('Please enter the temperature in Celsius. \n')) #ask for temp in C


nfar1 = cel * 9 #convert to F
nfar2 = nfar1 / 5
nfar3 = nfar2 + 32

#output the fahrenheit temperature
print "The temperature in Fahrenheit is " + str(nfar3) + "F! \n"

far = int(input('Please enter the temperature in Fahrenheit. \n')) #ask for temp in F


ncel1 = far - 32;
ncel2 = ncel1 * 5;#convert to C
ncel3 = ncel2 / 9;

#output the celsius temperature
print "The temperature in Celsius is " + str(ncel3) + "C! \n"
