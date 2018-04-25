//Guessing Game
//By Aisha Jackson
//October 1, 2014


import java.util.Scanner; //import the Scanner class
import java.util.Random; //import random generator class

public class Guessinggame { //class declaration
        
        public static void main(String []args) //program execution starts
        {
            Scanner keyboard = new Scanner(System.in); //single shared Scanner for keyboard input
            
            System.out.println("Hello user! We are going to play a guessing game! You have up to ten tries to guess the correct number between 0 and 100.");
            
            Random rand = new Random(); //random number generator
            int randomInt = rand.nextInt(100); //random number up to 100
            
            
                for(int i=1; i < 11; i++) //to count the number of guesses
                {
                    System.out.println("Please enter your guess."); //ask for guess
                    int num = keyboard.nextInt(); //input guess
                    
                    if(num == randomInt){
                        System.out.println("You WON! The number is " + randomInt + " You guessed it in " + i + " try(ies)!"); //if you won
                        break; //end the program
                    }
                    
                    if(num > randomInt){
                        System.out.println("You are incorrect! You are too high."); //if you are to high
                    }
                    
                    if(num < randomInt){
                        System.out.println("You are incorrect! You are too low."); //if you are too low
                    }
                    
                    if(i==10){
                        System.out.println("Too many guesses! The number is " + num + " Try again next time.");
                    } //if you run out of guesses
                }

    }
  }

    