//Program that asks for numbers to compute area and perimeter and circumference
//Written by Aisha Jackson
// Sept 26, 2014

import java.util.Scanner; //import the Scanner class

public class AreaCircum { //class declaration
    
    public static void main(String []args) //program execution starts
    {
        Scanner keyboard = new Scanner(System.in); //single shared Scanner for keyboard input

        System.out.println("Hello user! First we are going to compute the area and perimeter of a rectangle");
        
        System.out.println("Please enter the length of the rectangle.");
        int length = keyboard.nextInt();

        System.out.println("Please enter the width of the rectangle.");
        int width = keyboard.nextInt();

        int perimeter=length + length + width + width;
        int area=length*width;

        System.out.println("The perimeter of the rectangle is: " + perimeter + " and the area is: " + area);
    
        System.out.println("Next, we are going to compute the area of a square.");
       
        System.out.println("Please enter the edge length of the square.");
        int edge = keyboard.nextInt();
        
        int sqarea=edge*edge;
        
        System.out.println("The area of the square is: " + sqarea);
        
        System.out.println("Last, we are going to compute the circumference and area of a circle.");
        
        System.out.println("Please enter the radius of the circle.");
        double radius = keyboard.nextDouble();
        
        double circum = 2 * radius * Math.PI;
        double circarea = Math.PI * Math.pow(radius, 2);
        
       System.out.println("The circumference of a circle is: " + circum + " and the area is: " + circarea);
    }
}
    