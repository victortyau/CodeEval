#include <stdio.h>
#include <string.h>
#include <ctype.h>

void openFile(char filename[100]);
void createPercentage(char array_lines[100][80], int index, int array_index[100]);

int main(int argc, char *argv[]){
  char filename[100];
  if( argc == 2 ){
    strcpy(filename,argv[1]);
    openFile(filename);
  }
  return 0;
}

void openFile(char filename[100]){
   FILE *fp;
   int array_index[100];
   char line[80];
   char array_lines[100][80];
   int i = 1;
   fp =  fopen(filename, "r");
   while(fgets(line, 80, fp) != NULL)
   {
     strcpy(array_lines[i -1],line);
     array_index[i -1]= strnlen(line,80) - 1;
     i++;
   }
   createPercentage(array_lines, i -1, array_index);
   fclose(fp);
}


void createPercentage(char array_lines[100][80], int index, int array_index[100]){
   int i = 0;
   int j = 0;
   int low = 0;
   int up = 0;
   for( i = 0; i < index; i++ ){
     for( j = 0; j < array_index[i]; j++ ){
       if(isupper(array_lines[i][j])){
         up++;
       }
       else{
         low++;
       }
     }

     float lower = ((float)low / array_index[i]) * 100;
     float upper = ((float)up / array_index[i]) * 100;
     printf("lowercase: %.2f uppercase: %.2f\n",lower,upper);
     low = 0;
     up = 0;
   }
}
