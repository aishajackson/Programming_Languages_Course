use strict;
use warnings;
#use Text::CSV;
#use autodie;  #So I dont have to worry about my file

#!/usr/bin/perl


my @testarray;
open(DATA, 'dataFile.txt') or die $!;
while(<DATA>) {
   chomp; #remove trailing \n
   push @testarray, [split ',', $_]; #[] makes anonymous
      # array with values from split, pushed on in order...
      # could use unshift if you wanted them reversed
}
close DATA;
