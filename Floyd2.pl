#Aisha Jackson
#This program implements Floyd's algorithm
#November 16, 2014

#!/usr/bin/perl

print "This program is going to implement Floyd's Algorithm with the major cities in the United States\n";

print "The matrix is filled with random numbers to each location\n";

print "The cities are: ";
print "\n1. New York, NY";
print "\n2. Los Angeles, CA";
print "\n3. Chicago, IL";
print "\n4. Houston, TX";
print "\n5. Philadelphia, PA\n\n";

use strict;

my @matrix = (
    [   0,   392,   790,   127,    95 ],
    [ 292,     0,   206,   154,   209 ],
    [  70,   216,     0,   184,   759 ],
    [  27,   146,   189,     0,   548 ],
    [  95,   209,   759,    18,     0 ],
);

# array to represent minimum shortest path
# -1 means direct path is minimum shortest path
# this array is updated as max node number
# when passing node x to y
my @minpath = (
    [  -1,  -1,  -1,  -1,  -1 ],
    [  -1,  -1,  -1,  -1,  -1 ],
    [  -1,  -1,  -1,  -1,  -1 ],
    [  -1,  -1,  -1,  -1,  -1 ],
    [  -1,  -1,  -1,  -1,  -1 ],
);
my ($var1,$var2);

print "Original Matrix\n";
&printArray(\@matrix);

&floyd(\@matrix, \@minpath);

print " Result Matrix \n";
&printArray(\@matrix);


for($var1 = 0; $var1<=$#minpath; $var1++){
    for($var2 = 0; $var2<$#minpath; $var2++){
        print "Shortest path from: " . ($var1+1) ." to ". ($var2+1) . ": ". ($var1+1) ;
        &showpath($var1,$var2,\@minpath);
        print ($var2+1);
        print "\n";
    }
}


sub printArray{
    my $D = shift;
    my $size = scalar @$D;
    for(my $a=0;$a<$size;$a++){
        for(my $b=0;$b<$size;$b++){
            printf "%4d", $D->[$a][$b];
        }
        print "\n";
    }
}

sub floyd{

    my ($var1,$j,$k,$min);
    my $D = shift;
    my $minpath  = shift;

    my $size = scalar @$D;
    for($var1=0; $var1<$size ;$var1++){
        for($var2=0; $var2<$size ;$var2++){
            for($k=0; $k<$size ;$k++){
                if($D->[$var2][$k] > ($D->[$var2][$var1] + $D->[$var1][$k])){
                    $D->[$var2][$k] = ($D->[$var2][$var1] + $D->[$var1][$k]); # Minimum  Weight info
                    $minpath->[$var2][$k] = $var1;                            # Shortest Path info
                }
            }
        }
       print "\n";
    }

}

#
# shows minimum shortest path from node $from to node $to
#
sub showpath{

    my $from = shift;
    my $to  = shift;
    my $minpath = shift;
    my ($var1,$var2);
    if($minpath->[$from][$to] > -1){
        &showpath($from, $minpath->[$from][$to], $minpath);
        print ($minpath->[$from][$to] + 1) ." -> ";
        &showpath($minpath->[$from][$to], $to, $minpath);
    }else{
        print "->";
    }

}
