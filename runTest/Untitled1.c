// 
#include <stdio.h>
#include <strings.h>
int instance[10][7];
void main(){
   int i,j;
   int a[5][3];
   
   instance[0][0] = 1; 
   instance[0][1] = 1;
   instance[0][2] = 1;
   instance[0][3] = 0;
   instance[0][4] = 1;
   instance[0][5] = 1;
   instance[0][6] = 1;
 
   
   instance[1][0] = 0;
   instance[1][1] = 0;
   instance[1][2] = 1;
   instance[1][3] = 0;
   instance[1][4] = 0;
   instance[1][5] = 1;
   instance[1][6] = 0;

   instance[2][0] = 1;
   instance[2][1] = 0;
   instance[2][2] = 1;
   instance[2][3] = 1;
   instance[2][4] = 1;
   instance[2][5] = 0;
   instance[2][6] = 1;

   instance[3][0] = 1;
   instance[3][1] = 0;
   instance[3][2] = 1;
   instance[3][3] = 1;
   instance[3][4] = 0;
   instance[3][5] = 1;
   instance[3][6] = 1;

   instance[4][0] = 0;
   instance[4][1] = 1;
   instance[4][2] = 1;
   instance[4][3] = 1;
   instance[4][4] = 0;
   instance[4][5] = 1;
   instance[4][6] = 0;

   instance[5][0] = 1;
   instance[5][1] = 1;
   instance[5][2] = 0;
   instance[5][3] = 1;
   instance[5][4] = 0;
   instance[5][5] = 1;
   instance[5][6] = 1;

   instance[6][0] = 1;
   instance[6][1] = 1;
   instance[6][2] = 0;
   instance[6][3] = 1;
   instance[6][4] = 1;
   instance[6][5] = 1;
   instance[6][6] = 1;

   instance[7][0] = 1;
   instance[7][1] = 0;
   instance[7][2] = 1;
   instance[7][3] = 0;
   instance[7][4] = 0;
   instance[7][5] = 1;
   instance[7][6] = 0;

   instance[8][0] = 1;
   instance[8][1] = 1;
   instance[8][2] = 1;
   instance[8][3] = 1;
   instance[8][4] = 1;
   instance[8][5] = 1;
   instance[8][6] = 1;

   instance[9][0] = 1;
   instance[9][1] = 1;
   instance[9][2] = 1;
   instance[9][3] = 1;
   instance[9][4] = 0;
   instance[9][5] = 1;
   instance[9][6] = 1;
   
    for(i=1;i<10;i++){
   	for(j=1;j<7;j++){
   		printf("%d,",instance[i][j]);
	   }
	   printf("\n");
   }
   
}



