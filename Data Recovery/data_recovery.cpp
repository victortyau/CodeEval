#include <stdio.h>
#include<fstream>
#include<iostream>
using namespace std;

class Main{
  public:
    void gotFile(char filename[100]){
      char lines[80];
      int i = 0;
      char array_lines[100][80];
      printf("running in gotFile \n");
      printf("%s\n",filename);
      ifstream fin(filename);
      if(fin){
        printf("the file exist \n");
        while(!fin.eof()){
            fin >> array_lines[i];
          //  printf("%s \n",array_lines[i]);
          printf("%d",i);
            i++;
        }
      }
      fin.close();
    }
    void makeProcess(){}
};

int main(int argc, char* argv[]){

    if( argc == 2 ){
      printf("running c++ \n");
      Main n;
      printf("%s",argv[1]);
      n.gotFile(argv[1]);
    }
}
