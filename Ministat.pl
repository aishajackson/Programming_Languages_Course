#Mini Stat Program
#By Aisha Jackson
#9/14/14

#!/usr/bin/perl

print "This program is going to take in a list of numbers and do certain functions with them! \n \n";

print "First you will enter 10 numbers. \n \n";

@newarray[10]; #set the array to 10 elements

for($i=0; $i < 10; $i++){
    print "Please enter a number: \n"; #ask for the number and put the number into the array
    chomp  ($num = <>);
    push(@newarray, $num);
}

sub List{
print "The numbers are $newarray[0], $newarray[1], $newarray[2], $newarray[3], $newarray[4], $newarray[5], $newarray[6], $newarray[7], $newarray[8], and $newarray[9] \n \n"; #output the values of the array

}

List();

@sortarray = sort {$a <=> $b} @newarray; #sort function
print "The sorted list is: @sortarray \n \n";

$sum = 0;

sub Sum{
foreach $num1(@newarray){
    $sum = $sum + $num1; #get the sum of the array
}
print "The sum is: $sum \n \n"; #print the sum
}

Sum();

sub Average{
$avg = $sum/10; #get the average of the array

print "The average is: $avg \n \n"; #print the average
}

Average();

sub Highest{
$highest = @newarray[0]; #set highest equal to the first element
foreach $number(@newarray){
    if ($number > $highest){
        $highest = $number; #check to see if the next number is higher
    }
}
print "The highest number in the list is $highest \n \n"; #print the highest number
}

Highest();

sub Lowest{
$lowest = @newarray[0]; #set the lowest equal to the first element
foreach $number1(@newarray){
    if ($number1 < $lowest){
        $lowest = $number1; #check to see if the next number is lower
    }
}
print "The lowest number in the list is $lowest \n \n"; #check to see if the next number is lower
}

Lowest();

