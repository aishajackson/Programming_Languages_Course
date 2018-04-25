#Ask for name and age and suggest possible outing options
#By Aisha Jackson
#10/18/14

#!/usr/bin/python

print "Hello user! This program will suggest possible outings for you depending on your age. \n"

name = str(raw_input('Please enter your name. \n')) #Ask for the user's name

age = int(input('Please enter your age. \n')) #Ask for the user's age

print ("Thank you " + name + "! You are a good looking " + str(age) + " year old! Enjoy.." )


if(age <= 16) : print "Nothing! You need to do whatever your mama says to do! \n" #age is less than or equal to 16


if(age >= 17) : print "A night on the town with some friends! \n" #age is greater than or equal to 17


if (age >= 45) : print "A drive in movie theater! \n" #age is greater than or equal to 45
