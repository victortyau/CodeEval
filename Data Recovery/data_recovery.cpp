#include <stdio.h>
#include <string.h>
#include <cctype>
#include<fstream>
#include<iostream>
using namespace std;

class Main{
  public:
    void gotFile(char filename[100]);
    void makeProcess(char array_lines[100][200],int index,int array_length[100]);
    void createText(char array_strings[100][80],int array_indexes[100], int x, int z);
};

void Main::gotFile(char filename[100]){
  int i = 0;
  string line;
  char array_lines[100][200];
  int array_length[100];
  ifstream fin(filename);
  if(fin.is_open()){
    while(fin.good()){
      getline(fin,line);
      if(!line.empty()){
        array_length[i] = line.length();
        strcpy(array_lines[i], line.c_str());
        i++;
      }
    }
    fin.close();
    makeProcess(array_lines,i,array_length);
  }
}
void Main::makeProcess(char array_lines[100][200],int index,int array_length[100]){
  int x = 0;
  int y = 0;
  int z = 1;
  int n = 1;
  char tol[10] = ";";
  char array_strings[100][80];
  int array_indexes[100];
  for(int i=0; i < index; i++){
    for( int j =0; j < array_length[i]; j++ ){
      if( array_lines[i][j] == tol[0] || n >= 2 ){
        if(!isspace(array_lines[i][j]) && array_lines[i][j] != tol[0]){
          array_indexes[z] = (int)array_lines[i][j];
          z++;
        }
        n++;
      }
      else if(!isspace(array_lines[i][j])){
        array_strings[x][y] = array_lines[i][j];
        y++;
      }
      else{
        x++;
        y=0;
      }
    }
    createText(array_strings,array_indexes,x,z);
    break;
  }
}

void Main::createText(char array_strings[100][80],int array_indexes[100], int x, int z){


 for( int i =0; i < x; i++){
    printf("%s \n",array_strings[i]);
 }


  if(x == z){
    printf("the same indexes");
    printf("%d\n",x);
    printf("%d\n",z);
  }
  else{
    printf("the wrong indexes \n");
    printf("%d\n",x);
    printf("%d\n",z);
  }
}

int main(int argc, char* argv[]){
    if( argc == 2 ){
      Main n;
      n.gotFile(argv[1]);
    }
}
