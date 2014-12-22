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
  char number[10] = "";
  char tol[10] = ";";
  char array_strings[100][80];
  int array_indexes[100];
  for(int i=0; i < index; i++){
    for( int j =0; j < array_length[i]; j++ ){
      if( array_lines[i][j] == tol[0] || n >= 2 ){

        if(!isspace(array_lines[i][j]) && array_lines[i][j] != tol[0]){
            char temp[1];
            strcpy(temp,&array_lines[i][j]);
            //temp << (char*)&array_lines[i][j];
            //printf("%c \n",array_lines[i][j]);
            printf("%s \n",temp);
            //strcat(number,temp);
            //printf("%li\n",strlen(number));
        }
        else if(isspace(array_lines[i][j])){
          array_indexes[z] = atoi(number);
          z++;
          //printf("nothing to do");
          strcpy(number,"");
          //printf("%s \n",number);
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

    printf("\n********************\n");
    //createText(array_strings,array_indexes,x,z);
    //memset(array_strings, 0, sizeof array_strings);
    x =0;
    y =0;
    n = 1;
    z = 1;
  }
}

void Main::createText(char array_strings[100][80],int array_indexes[100], int x, int z){

  char final_array[100][150];
  int j = 1;
  int n = 1;
  int k = 1;
  int index = 0;
  char temp[100];

  printf("%d\n",x);
  printf("%d\n",z);

  if(x > z){
    index = x;
  }
  else if(x < z){
    index = z;
  }
  else{
    index = x;
  }

  // for( int i = 1; i <= z; i++ ){
  //   printf("%d \n",array_indexes[i]);
  // }

  printf("%d here \n",index);

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

    if( i == n -1 ){
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

}

int main(int argc, char* argv[]){
    if( argc == 2 ){
      Main n;
      n.gotFile(argv[1]);
    }
}


// if(x == z){
//   printf("the same indexes");
//   printf("%d\n",x);
//   printf("%d\n",z);
// }
// else{
//   printf("the wrong indexes \n");
//   printf("%d\n",x);
//   printf("%d\n",z);
// }
