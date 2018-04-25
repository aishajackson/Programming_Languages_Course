#include <iostream>
using namespace std;
int minshortpath[15][15];

void algorithm(int original[15][15], int minshortpath[15][15]){
  int i,j,k;
  for(k=0;k<15;k++){
    for(i=0;i<15;i++){
      for(j=0;j<15;j++){
        if(original[i][k]+ original[k][j] < original[i][j]){
          original[i][j] = original[i][k] + original[k][j];
          minshortpath[i][j] = k;
        }
      }
    }
  }
}

void shortest(int i, int j){
  int k = minshortpath[i][j];
  if (k > 0){
    shortest(i,k);
    cout<<"->"<<k<<"->";
    shortest(k,j);
  }
}

void findpath(int original[15][15], int i, int j)
{
  cout<<"Path from " << i <<" to "<< j << ": ";
  if (original[i][j]  < 6000)
    {
      cout<<i;
      shortest(i, j);
      cout<<"->"<<j<<"->";
    }
  }

int main(){

int original[15][15] =
{
  {0,5000,5000,663,5000,5000,5000,5000,5000,475,5000,5000,5000,5000,5000},
  {5000,0,5000,5000,5000,1780,1423,5000,5000,948,5000,5000,5000,2060,5000},
  {5000,5000,0,5000,1440,5000,5000,949,5000,517,1614,5000,5000,5000,5000},
  {663,5000,5000,0,5000,5000,5000,5000,811,5000,237,5000,5000,5000,5000},
  {5000,5000,1440,5000,0,272,5000,5000,5000,5000,5000,5000,5000,5000,414},
  {5000,1780,5000,5000,272,0,5000,5000,5000,5000,5000,5000,5000,5000,5000},
  {5000,1423,5000,5000,5000,5000,0,5000,5000,5000,5000,5000,5000,5000,5000},
  {5000,5000,949,5000,5000,5000,5000,0,5000,5000,1217,792,5000,5000,5000},
  {5000,5000,5000,811,5000,5000,5000,5000,0,5000,5000,5000,1771,5000,2257},
  {475,948,517,5000,5000,5000,5000,5000,5000,0,5000,5000,5000,5000,5000},
  {5000,5000,1614,237,5000,5000,5000,1217,5000,5000,0,5000,5000,5000,5000},
  {5000,5000,5000,5000,5000,5000,5000,792,5000,5000,5000,0,5000,5000,5000},
  {5000,5000,5000,5000,5000,5000,5000,1771,5000,5000,5000,5000,0,5000,5000},
  {5000,2060,5000,5000,5000,5000,5000,5000,5000,5000,5000,5000,5000,0,804},
  {5000,5000,5000,5000,414,5000,5000,5000,2257,5000,5000,5000,5000,804,0}
};

cout << "Original Matrix: " << endl;
for (int i = 0; i < 15; i++){
  for(int x = 0; x < 15; x++){
    cout << original[i][x] << ' ';
  }
  cout << endl;
}
cout << endl;

algorithm(original, minshortpath);
for(int i = 0; i<=15; i++){
  for(int j = 0; j<15; j++){
    if(i==j){
      cout << "Path from " << i << " to " << j << ": 0 " << endl;
    }
    else if (i != j){
      findpath(original,i,j);
      cout << j;
      cout << endl;
    }
  }
}
  return 0;
}