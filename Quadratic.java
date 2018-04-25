//Program that asks for the inputs A, B, C and plugs them in to find the quadratic
//Written by Aisha Jackson
// Sept 26, 2014

import java.util.Scanner; //import the Scanner class
public class Quadratic { //class declaration
    
    public static void main(String []args) //program execution starts
    {
        Scanner keyboard = new Scanner(System.in); //single shared Scanner for keyboard input
        
        //This will ask the user for the numbers
        System.out.println("Please enter an integer value for A.");
       int numA = keyboard.nextInt();
        
        System.out.println("Please enter an integer value for B.");
        int numB = keyboard.nextInt();
        
        System.out.println("Please enter an integer value for B.");
        int numC = keyboard.nextInt();
        
      
        double square = numB * numB;
        double b22 = 4 * numA * numC;
        double x = square - b22;
        double rad = Math.sqrt(x);
        double negb = -1 * numB;
        double top = negb + rad; //calculate the top part of the quadratic formula
        double top2 = negb - rad;
        double bottom = 2 * numA; //calculate the bottom portion
        double quad = top / bottom;
        double quad2 = top2/ bottom; //calculate the quadratic formula

        System.out.println("The first root is: " + quad);
        System.out.println("The second root is: " + quad2);
       
    }
}