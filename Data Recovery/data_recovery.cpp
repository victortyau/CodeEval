#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <cctype>
#include<fstream>
#include<iostream>
using namespace std;

class Main{
  public:
    void gotFile(char filename[100]);
    void makeProcess(char array_lines[100][500],int index,int array_length[100]);
    void createText(char array_strings[100][80],int array_indexes[100], int x, int z);
};

void Main::gotFile(char filename[100]){
  int i = 0;
  string line;
  char array_lines[100][500];
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

void Main::makeProcess(char array_lines[100][500],int index,int array_length[100]){
  int x = 0;
  int y = 0;
  int z = 0;
  int n = 1;
  char number[10] = "";
  char tol[10] = ";";
  char array_strings[100][80];
  int array_indexes[100];
  string cad;
  char temp;
  for(int i=0; i < index; i++){
    for( int j =0; j < array_length[i]; j++ ){
      if( array_lines[i][j] == tol[0] || n >= 2 ){
        string data = "";
        char cad;

        if(!isspace(array_lines[i][j]) && array_lines[i][j] != tol[0]){
<<<<<<< HEAD
          data = array_lines[i][j];
          cad = data[0];
          if( array_indexes[z] == 0 ){
            array_indexes[z] = atoi(&cad);
          }
          else{
            array_indexes[z] *= 10;
            array_indexes[z] += atoi(&cad);
=======
          cad = array_lines[i][j];
          temp = cad[0];
          if(array_indexes[z] == 0){
            array_indexes[z] = atoi(&temp);
          }
          else if( array_indexes[z] > 0 ){
            array_indexes[z] *= 10;
            array_indexes[z] += atoi(&temp);
>>>>>>> 6d4df1354c51953d60bab7ef2d3c5300da09707c
          }
        }
        else{
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
    memset(array_strings, 0, sizeof array_strings);
    memset(array_indexes, 0, sizeof array_indexes);
    x =0;
    y =0;
    n = 1;
    z = 0;
  }
}

void Main::createText(char array_strings[100][80],int array_indexes[100], int x, int z){
  char final_array[100][150];
  int j = 1;
  int n = 1;
  int k = 1;
  int index = 0;
  char temp[100];

  if(x > z){
    index = x;
  }
  else if(x < z){
    index = z;
  }
  else{
    index = x;
  }

  for( int i = 0; i <= index; i++){
    if(array_indexes[k] == 0){
      strcpy(temp,array_strings[i]);
    }
    strcpy(final_array[array_indexes[k]],array_strings[i]);
    k++;
    n++;
  }

  for( int i =1; i < n; i++ ){
    if(strlen(final_array[i]) > 0){
      printf("%s",final_array[i]);
    }
    else{
        printf("%s",temp);
    }

    if( i == n-1 ){
      printf("\n");
    }
    else{
      printf(" ");
    }
  }

  j = 1;
  n = 1;
  k = 1;
  strcpy(temp,"");
  memset(final_array, 0, sizeof final_array);
}

int main(int argc, char* argv[]){
    if( argc == 2 ){
      Main n;
      n.gotFile(argv[1]);
    }
}
