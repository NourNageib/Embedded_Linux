#include <stdio.h>
#include "../Include/Dynamic_calc.h"

int main(void)

{          
        int num1,num2;
	printf("Enter two oprands :\noprand1 : ");
	scanf("%d",&num1);
	printf("\noprand1 : ");
	scanf("%d",&num2);
	printf("\nAddition : %d\n",add(num1,num2));
	printf("Subtraction : %d\n",subtract(num1,num2));
        printf("Division  : %.2f\n",divide(num1,num2));
         printf("Multiplication  : %d\n",multiply(num1,num2));
	return 0;
}
