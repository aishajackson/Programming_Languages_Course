#Palindrome Program
#By Aisha Jackson
#9/17/14

#!/usr/bin/perl

print "This program is going to test whether a string of words is a palindrome or not. \n";

print "Please enter a word or words. Do not capitalize. \n";
chomp($word = <>); #enter the word or words

$word =~ tr/A-Za-z/a-zA-Z/; #to capitalize the letters
$word =~ tr/ //ds; #to remove the spaces for multiple words to evaluate the word

push(@wordarray, $word); #push the word or phrase into the array

@wordarray = split(//, $word); #put each letter into the array

@backarray = reverse(@wordarray); #reverse the array so the letters are backward

$size = @wordarray; #the size of the palindrome

#see if the word is the same backwards as it is forwards
for( $i = 0; $i < $size; $i++){
    if(@wordarray[$i] ne @backarray[$i]){
        $var = "false";
        last;
    }
    else{
        $var = "true";
    }
}

if($var eq "false"){ #if the value is truen then it is not a palindrome and vice versa
    print " $word is not a palindrome \n";
}

else{
    print "$word is a palindrome \n";
}