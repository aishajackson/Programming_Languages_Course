#Ask for numbers to display the next ten numbers, squares, square roots, and cubes
#By Aisha Jackson
#9/5/14

#!/usr/bin/perl

print "content-type: text/html \n\n"; #HTML Header

print "Hello user! This program is going to show some things relative to the number you choose! \n";

print "Please enter any integer. \n"; #ask for the number
chomp($num = <>);


for($i=1; $i < 11; $i++){ #get the number, square, cube and square root
    $num++;
    $num2 = $num ** 2;
    $num3 = $num ** 3;
    $num4 = sqrt ($num);
    print "NUMBER: $num; SQUARE: $num2; CUBE: $num3; SQUARE ROOT: $num4. \n";
}

