#include <stdio.h>

float divide( int x,int y) 
{
	if(y==0)
	{
		printf("trap fault! -> divide by zero !");
	}
	else
		return (x/y);
}
