#Guessing Game
#By Aisha Jackson
#9/9/14

#!/usr/bin/perl

use integer;

print "Hello user! We are going to play a guessing game! You have up to ten tries to guess the correct number between 0 and 100. \n"; #tell user what the game is

$mynum = int(rand(100)); #random numbers between 0 and 100

    
for($i = 1; $i < 11; $i++){
    
    print "Please enter your guess. \n"; #ask for guess
    chomp($guess = <>);
    
    if($guess== $mynum){
            print "You WON! The number is $mynum! You guessed it in $i try(ies)! \n";
        last; #if the number is guessed
        }

    if($guess > $mynum){
        print "You are incorrect! You are too high. \n"; #if the number is too high
    }
    if($guess < $mynum){
        print "You are incorrect! You are too low. \n"; #if the number is too low
        }
    
    if($i == 10){
            print "Too many guesses! The number is $mynum! Try again next time. \n";
    } #if they used 10 guesses already

}

