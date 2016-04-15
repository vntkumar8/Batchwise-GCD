/*
Random Partition Code
0815
Argument based 
*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#define MAX 12048

int main(){
	FILE *fp0,*fp1,*fp2,*fp3,*fp4,*fp5,*fp6,*fp7,*fp8,*fp9,*fp10;
	char str[MAX];
	float count=0;
	srand(time(NULL));
	fp0=fopen("1gb.txt","r");
	fp1=fopen("f1","w+");
	fp2=fopen("f2","w+");
	fp3=fopen("f3","w+");
	fp4=fopen("f4","w+");
	fp5=fopen("f5","w+");
	fp6=fopen("f6","w+");
	fp7=fopen("f7","w+");
	fp8=fopen("f8","w+");
	fp9=fopen("f9","w+");
	fp10=fopen("f0","w+");
	while(!feof(fp0)){
		fgets(str,MAX,fp0);
		int r = rand()%10;			//Random Bit Generation
        	if(r==1){
			fputs(str,fp1);
			}if(r==2){
			fputs(str,fp2);
			}if(r==3){
			fputs(str,fp3);
			}if(r==4){
			fputs(str,fp4);
			}if(r==5){
			fputs(str,fp5);
			}if(r==6){
			fputs(str,fp6);
			}if(r==7){
			fputs(str,fp7);
			}if(r==8){
			fputs(str,fp8);
			}if(r==9){
			fputs(str,fp9);
			}if(r==0){
			fputs(str,fp10);
			}
			count++;
			printf("%4.2f percent \n",(count/27348824)*100);
	}
		fclose(fp0);
		fclose(fp1);
		fclose(fp2);
		fclose(fp3);
		fclose(fp4);
		fclose(fp5);
		fclose(fp6);
		fclose(fp7);
		fclose(fp8);
		fclose(fp9);
		fclose(fp10);
		
	return 0;
}

