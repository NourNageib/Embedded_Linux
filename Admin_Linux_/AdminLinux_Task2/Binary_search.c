#include <stdio.h>
#include <stdlib.h>
int Binary_Search(int*arr,int size,int key,int low_bound,int high_bound)
{

    int middle=(high_bound+low_bound)/2;
    if(low_bound>high_bound)
    {
        return -1;

    }
    if(arr[middle]==key)
    {
        return middle;
    }
    if(arr[middle]<key)
    {
        return Binary_Search(arr,size,key,middle+1,high_bound);

    }
    if(arr[middle]>key)
    {
        return Binary_Search(arr,size,key,low_bound,middle-1);

    }
    else
    {

        return -2;
    }




}
int* Array_Dyanamicalloc(int size)
{
    int *array=malloc(size*sizeof(int));
    return array;

}
void Scan_array(int*arr,int size)
{
    for(int i=0;i<size;i++)
    {
        scanf("%d",arr+i);

    }
}
void Swap(int*x,int*y)
{
    int temp=*x;
    *x=*y;
    *y=temp;

}
void BubbleSort(int *arr,int size)
{
    for(int i=0;i<size-1;i++)
    {
        for(int j=i;j<size-i;j++)
        {

            if(arr[j]>arr[j+1])
            {

                Swap(&arr[j],&arr[j+1]);
            }
        }

    }

}
void Print_array(int *arr,int size)
{
    printf("[");
    for(int i=0;i<size;i++)

    {

        printf("%d ",arr[i]);
    }
    printf("]\n");
}
int main(void)
{
    int size,key ;
    printf("Please enter size of array :\n");
    scanf("%d",&size);
    int *arr=Array_Dyanamicalloc(size);
    Scan_array(arr,size);
    Print_array(arr,size);
    BubbleSort(arr,size);
    Print_array(arr,size);
    printf("Please enter key you want to find\n");
    scanf("%d",&key);
    int index=Binary_Search(arr,size,key,0,size-1);
    if(index==-1 || index==-2)
    {

        printf("Notfound");
    }
    else
    {
        printf("Index %d",index);
    }
    return 0;
}
