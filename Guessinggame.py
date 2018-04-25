#Guessing Game
#By Aisha Jackson
#10/19/14

#!/usr/bin/python

import random

def main():
  print "Hello user! We are going to play a guessing game! You have up to ten tries to guess the correct number between 0 and 100. \n"; #tell user what the game is

  mynum = random.randint(0,100) #random numbers between 0 and 100

def guessnum():
#counter
  count = 1
  while count < 11: #while loop for up to ten tries

    guess=int(input( "Please enter your guess. \n")) #ask for guess

    if(guess== mynum):
            #if the number is guessed
            print "You WON! The number is " + str(mynum) + "! You guessed it in " + str(count) + " try(ies)! \n"
            play=str(raw_input("Would you like to play again? Please enter Y or N. \n") #ask if they want to play again
            if play.upper() == 'N':
              exit()
            elif play.upper() == 'Y':
              main()


    if(guess > mynum):
        print "You are incorrect! You are too high. \n" #if the number is too high

    if(guess < mynum):
        print "You are incorrect! You are too low. \n" #if the number is too low


    if(count == 10):
            print "Too many guesses! The number is " + str(mynum) + "! Try again next time. \n"
     #if they used 10 guesses already

    count = count + 1 #increase count
