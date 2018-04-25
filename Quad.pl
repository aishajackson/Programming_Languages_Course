#Quadratic Equation Program- Given the roots solve the quadratic equation
#By Aisha Jackson
#9/5/14

#!/usr/bin/perl

print "Hello user! This program will calculate the quadratic equation by using the quadratic formula. \n";

print "Please enter an integer value for a. \n"; #Ask for a
chomp($a = <>);

print "Please enter an integer value for b. \n"; #ask for b
chomp($b = <>);

print "Please enter an integer value for c. \n"; #ask for c
chomp($c = <>);

$b2 = $b ** 2;
$b22 = 4 * $a * $c;
$rad = sqrt($b2 - $b22);
$negb = -1 * $b;
$top = $negb + $rad; #calculate the top part of the quadratic formula ^
$top2 = $negb - $rad;
$bottom = 2 * $a;#calculate the bottom portion ^
$quad = $top / $bottom;
$quad2 = $top2/ $bottom; #calculate the quadratic formula

print "The first root is $quad \n";
print "The second root is $quad2 \n";
