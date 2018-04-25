#Ask for numbers to compute area and perimeter and circumference
#By Aisha Jackson
#9/5/14

#!/usr/bin/perl


print "Hello user! First we are going to compute the area and perimeter of a rectangle \n";

print "Please enter the length of the rectangle. \n"; #length of rectangle
chomp($length = <>);

print "Please enter the width of the rectangle. \n"; #width of rectangle
chomp($width = <>);

$perimeter = $length + $length + $width + $width; #perimeter and area
$area = $length * $width;

print "The perimeter of the rectangle is $perimeter and the area of the rectangle is $area! \n";

print "Next, we are going to compute the area of a square. \n";

print "Please enter the edge length of the square. \n"; #length of square
chomp($edge = <>);

$sqarea = $edge * $edge; #area of a square

print "The area of the square is $sqarea! \n";

print "Last, we are going to compute the circumference and area of a circle. \n";

print "Please enter the radius of the circle. \n"; #radius of a circle
chomp($radius = <>);

use Math::Trig; #able to use pi in the program

$circum = 2 * $radius * pi; #calculate circumference and area
$circarea = $radius ** 2 * pi;

print "The circumference of the circle is $circum and the area is $circarea! \n";