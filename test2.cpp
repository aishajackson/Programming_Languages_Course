//Floyd Program
//By Aisha Jackson and Kiara Moore
//December 4, 2014

#include <iostream>
#include <fstream>
#include <string>
using namespace std;
int minshortpath[15][15]; //shortest path matrix

//display the matrix function
void DisplayMatrix (int original[15][15])
{
  int i,j;

  for (i=0;i<15;i++)
    {
      for (j=0;j<15;j++)
        {
          if(original[i][j] == 5000){
            cout << " ~ "; //use tilde so that there aren't too many numbers/messy
          }
          else
            cout << original[i][j] << " ";
        }
        cout << endl;
      }
    }
//Read in the file with the matrix
void ReadFile (string filename, int original[15][15]){
      int i,j;
      ifstream gameBoard;					 //create ifstream
      gameBoard.open("dataFile.txt"); //open ifstream with filename
      if(!gameBoard){
        cout << "cannot open file.\n";
      }
      for (i=0;i<15;i++){
        for(j=0;j<15;j++){
          gameBoard >> original[i][j];
        }
      }
      gameBoard.close();  //close ifstream
    }

//Floyd Algorithm Function
void algorithm(int original[15][15], int n){;
      int i,j,k;
      for(k=0;k<n;k++){
        for(i=0;i<n;i++){
          for(j=0;j<n;j++){
            if(original[i][k]+ original[k][j] < original[i][j]){
              original[i][j] = original[i][k] + original[k][j];
              minshortpath[i][j] = k;
            }
          }
        }
      }
    }

//Find the shortest path function
void shortest(int i, int j){
      string vertices[15] ={"ATL","CHI","DA","DC","LA","LV","MIA","MP","MWK","NOLA","NY","OKC","PHO","SE","SF"};
      int k = minshortpath[i][j];
      if (k > 0){
        shortest(i, k);
        cout<< "->" << vertices[k];
        shortest(k, j);
      }
    }

//Find and display the path function
void findpath(int original[15][15], string vertices[15],int i,int j, int n)
    {
      cout<<"From " << vertices[i] <<" to "<< vertices[j] << ": ";
        if (original[i][j]  < 5001)
          {
              cout << vertices[i];
              shortest(i, j);
              cout << "->" << vertices[j];
              cout << " Miles: " << original[i][j]; //output the distance
          }
      }

//Main Function
int main (){

      //Welcome Statement
      cout << "Welcome to our airlines! This airline implements Floyd's All Points Shortest\nPaths Algorithm. Below we have a matrix that provides the distances from city\nto city. Check out which cities you could like to travel to & book your\nflight now!" << endl;

      cout << "\n";

      //vertices
      string vertices[15] ={"ATL","CHI","DA","DC","LA","LV","MIA","MP","MWK","NOLA","NY","OKC","PHO","SE","SF"};

      //Opening the file to read in the matrix
      int original[15][15];
      string filename = "dataFile.txt";

      //Read in the matrix
      ReadFile (filename, original);

      //Display the matrix
      cout << "ORIGINAL MATRIX: " <<endl;
      DisplayMatrix (original);
      cout << endl;

      //Call the Floyd algorithm function
      algorithm(original, 15);

      //Output the paths
      for(int i = 0; i<=14; i++){
        for(int j = 0; j<15; j++){
          if(i==j){
            cout << "From " << vertices[i] << " to " << vertices[j] << ": -------------------- " << endl;
          }
          else if (i != j){
            findpath(original,vertices,i,j,15);
            cout << endl;
          }
        }
      }
      return 0;
    }
