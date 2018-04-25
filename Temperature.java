//Program that converts the temperature to farenheight or celsius
//Written by Aisha Jackson
// Sept 26, 2014

import java.util.Scanner; //import the Scanner class
public class Temperature { //class declaration
    
    public static void main(String []args) //program execution starts
    {
        Scanner keyboard = new Scanner(System.in); //single shared Scanner for keyboard input
        
        System.out.println("Hello user! This program is going to convert the temperature to Celsius or Fahrenheit.");
        System.out.println("Please enter the temperature in Celsius.");
        int cel = keyboard.nextInt();
        
        double nfar1 = cel * 9; //convert to F
        double nfar2 = nfar1 / 5;
        double nfar3 = nfar2 + 32;

        System.out.println("The temperature in Fahrenheit is: " +nfar3);

        System.out.println("Please enter the temperature in Fahrenheit.");
        int far = keyboard.nextInt();

        double ncel1 = far - 32;
        double ncel2 = ncel1 * 5; //convert to C
        double ncel3 = ncel2 / 9;

        System.out.println("The temperature in Celsius is: " +ncel3);
    }
}
