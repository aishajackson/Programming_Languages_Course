#Ask for name and age and suggest possible outing options
#By Aisha Jackson
#9/5/14

#!/usr/bin/perl

print "Hello user! This program will suggest possible outings for you depending on your age. \n";

print "Please enter your name. \n"; #Ask for user's name
chomp($name = <>);

print "Please enter your age. \n"; #Ask for user's age
chomp($age = <>);

print "Thank you $name! You are a good looking $age year old! ENJOY..   \n"; #output for suggestions

if($age <= 16){
    print "Nothing! You need to do whatever your mama says to do! \n"; #age is less than or equal to 16
}

if($age >= 17){
    print "A night on the town with some friends! \n"; #age is greater than or equal to 17
}

if ($age >= 45){
    print "A drive in movie theater! \n"; #age is greater than or equal to 45
}
