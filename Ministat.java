//MiniStat Program
//Written by Aisha Jackson
// Oct 2, 2014

import java.util.Scanner; //import the Scanner class
import java.util.Arrays; //import the Array class

public class Ministat { //class declaration


    public static void main(String []args) //program execution starts
    {
        Scanner keyboard = new Scanner(System.in); //single shared Scanner for keyboard input

      double [] anArray; //declares an array of integers
       anArray = new double[10]; //allocates memory for ten integers

      //describe what the program is going to do
        System.out.println("This program is going to take in a list of numbers and do certain functions with them!");
        System.out.println("First you will enter 10 numbers.");

      //ask for the ten numbers
       for(int i=0; i < 10; i++){
            System.out.println("Please enter a number.");
            double num=keyboard.nextInt();
            anArray[i]=num; //store the numbers into the array
       }

       //call the print array method
      printArray("Numbers", anArray);

      //used to sort the array and call the sorted array method
      Arrays.sort(anArray);
      printSortedArray("Sorted Array", anArray);

      //call the sum and average method
      sumAndaverageArray("Sum", anArray);

      //call the highest array method
      highestArray("Highest", anArray);

      //call the smallest array method
      smallestArray("Smallest", anArray);
}

    //print out the numbers in the array
    private static void printArray(String message, double anArray[]){
      System.out.println("The numbers are: ");
      for (int i = 0; i < anArray.length; i++){
        System.out.print(anArray[i] +" ");
      }
    }

    //print out the sorted array
    private static void printSortedArray(String message, double anArray[]){
      System.out.println("The sorted numbers are: ");
      for (int i = 0; i < anArray.length; i++){
        System.out.print(anArray[i] +" ");

      }
    }

    //print out the sum and the average
    private static void sumAndaverageArray(String message, double anArray[]){
        double sum = 0;
        for(double i: anArray){
          sum += i;
      }
        System.out.println("The sum is: "+ sum);

        double average = sum/10;
        System.out.println("The average is: "+ average);
    }

    //find the highest in the array
    private static void highestArray(String message, double anArray[]){
    double max = anArray[0];
    for(int i = 1; i < anArray.length; i++){
      if(anArray[i] > max){
        max = anArray[i];
      }
    }

    System.out.println("The highest number is " + max);
  }

  //find the smallest in the array
  private static void smallestArray(String message, double anArray[]){
  double min = anArray[0];
  for(int i = 1; i < anArray.length; i++){
    if(anArray[i] < min){
      min = anArray[i];
    }
  }

  System.out.println("The smallest number is " + min);
  }

}
