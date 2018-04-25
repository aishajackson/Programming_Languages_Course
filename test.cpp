#include <iostream>
#include <vector>
#include <fstream>
using namespace std;

int input(istream& in=cin)
{
	int x;
	in >> x;
	return x;
}
/*void shortest(int A[][], int C[][], int P[][])
{
	int i,j,k;
	for(i = 0; i<n; i++)
		A[i,i]=0;
		for(k=0; k<n; k++)
			for(i=0; i<n; i++)
				for(j=0; j<n; j++)
					if(A[i,k]+A[k,j], A[i,j]){
						A[i,j]=A[i,k]+A[k,j];
					P[i,j]=k;
					}
}
void path(int i, int j){
	k=p[i,j];
	if(k==0) return;
	path(i,k);
	cout << k;
	path(k,j);
}
*/
int main()
{
  ifstream fin;
  fin.open("dataFile.txt");
  input(fin);

	int board[5][5]; //creates a 9*9 matrix or a 2d array.

	for(int i=0; i<5; i++)    //This loops on the rows.
	{
		for(int j=0; j<5; j++) //This loops on the columns
		{
			board[i][j]= input(fin); //you can also connect to the file
			//and place the name of your ifstream in the input after opening the file will
			//let you read from the file.
		}
	}

	for(int i=0; i<5; i++)    //This loops on the rows.
	{
		for(int j=0; j<5; j++) //This loops on the columns
		{
			cout << board[i][j]  << "  ";
		}
		cout << endl;
	}
  fin.close();

}
