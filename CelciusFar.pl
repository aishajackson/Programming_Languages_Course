#Convert to celcius and farenheit
#By Aisha Jackson
#9/5/14

#!/usr/bin/perl

print "Hello user! This program is going to convert the temperature to Celsius or Fahrenheit. \n";

print "Please enter the temperature in Celsius. \n"; #ask for temp in C
chomp($cel = <>);

$nfar1 = $cel * 9; #convert to F
$nfar2 = $nfar1 / 5;
$nfar3 = $nfar2 + 32;

print "The temperature in Fahrenheit is $nfar3 F! \n";

print "Please enter the temperature in Fahrenheit. \n"; #ask for temp in F
chomp($far = <>);

$ncel1 = $far - 32;
$ncel2 = $ncel1 * 5;#convert to C
$ncel3 = $ncel2 / 9;

print "The temperature in Celsius is $ncel3 C! \n";