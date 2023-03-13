#include <stdio.h>
#include <stdlib.h>

#define H 20

void hsquare(int rows);

int main()
{
	int x = H, z;

	printf("\t\tenter num of rows:");

	scanf("%i",&z);

	printf("x = %i\n", x);
	printf("\t\tmohey 5awal\n");
	hsquare(z);
	return 0;
}

void hsquare(int rows){
    int i,s,x;
    for(i=0;i<rows;i++){
        if(0==i){
            for(s=0;s<rows;s++){
                printf("*");
                printf(" ");
            }

        }else if((rows-1)==i){
            for(s=0;s<rows;s++){
                printf("*");
                                printf(" ");

            }
        }else{



            for(x=0;x<rows;x++){

                if(0==x){

                printf("*");
                printf(" ");

                }else if((rows-1)==x){

                printf("*");
                printf(" ");

                }else{
                    printf(" ");
                    printf(" ");
                }

            }

        }
        printf("\n");
}
}
