//Program that Asks for name and age and suggest possible outing options
//Written by Aisha Jackson
// Sept 26, 2014

import java.util.Scanner; //import the Scanner class
public class Choices { //class declaration
    
    
    public static void main(String []args) //program execution starts
    {
        Scanner keyboard = new Scanner(System.in); //single shared Scanner for keyboard input
        
        System.out.println("Hello user! This program will suggest possible outings for you depending on your age.");
        
        System.out.println("Please enter your name.");
        String name = keyboard.nextLine();
        
        System.out.println("Please enter your age.");
        int age = keyboard.nextInt();
        
        System.out.println("Thank you " + name + "! You are a good looking " + age + " year old! ENJOY...");
        
        if (age <= 16)
        {
            System.out.println("Nothing! You need to do whatever your mama says to do!");
        }
        
        if (age >= 17)
        {
            System.out.println("A night on the town with some friends!");
        }

        if (age >= 45)
        {
            System.out.println("A drive in movie theater!");
        }

        
    }
}
