//Program that asks for numbers to display the next ten numbers, squares, square roots, and cubes
//Written by Aisha Jackson
// Sept 26, 2014

import java.util.Scanner; //import the Scanner class

public class Numbers { //class declaration
    
    public static void main(String []args) //program execution starts
    {
        Scanner keyboard = new Scanner(System.in); //single shared Scanner for keyboard input

        System.out.println("Hello user! This program is going to show some things relative to the number you choose!");
        
        System.out.println("Please enter any integer.");
        int num = keyboard.nextInt();

        for(int i =1; i < 11; i++){
            num++;
            double num2 = Math.pow(num, 2);
            double num3 = Math.pow(num, 3);
            double num4 = Math.sqrt(num);
            System.out.println("NUMBER: " + num + " SQUARE: "+ num2+ " CUBE: "+ num3+ " SQUARE ROOT: "+ num4);
        }
    }
}