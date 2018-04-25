#!/usr/bin/perl

use strict;

my @W = (
    [  0,     1, 999,  1,   5 ],
    [  9,     0,   3,  2, 999 ],
    [ 999,  999,   0,  4, 999 ],
    [ 999,  999,   2,  0,   3 ],
    [   3,  999, 999, 999,  0 ],
);

# array to represent minimum shortest path
# -1 means direct path is minimum shortest path
# this array is updated as max node number
# when passing node x to y
my @P = (
    [  -1,  -1,  -1,  -1,  -1 ],
    [  -1,  -1,  -1,  -1,  -1 ],
    [  -1,  -1,  -1,  -1,  -1 ],
    [  -1,  -1,  -1,  -1,  -1 ],
    [  -1,  -1,  -1,  -1,  -1 ],
);
my ($i,$j);

print "Original weighted graph\n";
&printArray(\@W);

&floyd(\@W, \@P);

print "<< Result weighted graph >>\n";
&printArray(\@W);

print "\n<< Result minimum shortest path graph >>\n";
&printArray(\@P);

for($i = 0; $i<=$#P; $i++){
    for($j = 0; $j<$#P; $j++){
        print "Minimum shortest path from " . ($i+1) ." to ". ($j+1) . ": ". ($i+1) ;
        &showpath($i,$j,\@P);
        print ($j+1);
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

    my ($i,$j,$k,$min);
    my $D = shift;
    my $P = shift;

    my $size = scalar @$D;
    for($i=0; $i<$size ;$i++){
        for($j=0; $j<$size ;$j++){
            for($k=0; $k<$size ;$k++){
                if($D->[$j][$k] > ($D->[$j][$i] + $D->[$i][$k])){
                    $D->[$j][$k] = ($D->[$j][$i] + $D->[$i][$k]); # Minimum  Weight info
                    $P->[$j][$k] = $i;                            # Shortest Path info
                }
            }
        }
       print "\n";

        #print $i."th result\n";
        #&printArray($D);
    }
    #print "\n\n";
}

#
# shows minimum shortest path from node $from to node $to
#
sub showpath{

    my $from = shift;
    my $to   = shift;
    my $P = shift;
    my ($i,$j);
    if($P->[$from][$to] > -1){
        &showpath($from, $P->[$from][$to], $P);
        print ($P->[$from][$to] + 1) ." -> ";
        &showpath($P->[$from][$to], $to, $P);
    }else{
        print "->";
    }

}
