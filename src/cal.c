#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>

int main()
{
   int choice,n1,n2,ans;
   
   while(1) {
    
      printf("\nWelCome To Simple Calcualtor Choose One Option:\n");
      printf(" 1: Addition\n");
      printf(" 2: Substraction\n");
      printf(" 3: Multiplication\n");
      printf(" 4: Division\n");
      printf(" 5: Quit\n");
      printf("Enter your choice:");
      scanf("%d",&choice);
      switch(choice) {
             case 1:

                    printf(" Enter Two Numbers\n");
                    scanf(" %d %d",&n1,&n2);
                    ans = n1 + n2;
                    printf(" Sum :%d\n",ans);
                    break;
            case 2:

                    printf(" Enter Two Numbers\n");
                    scanf(" %d %d",&n1,&n2);
                    ans = n1 - n2;
                    printf(" Subtraction :%d\n",ans);
                    break;
            case 3:
                    
                    printf(" Enter Two Numbers\n");
                    scanf(" %d %d",&n1,&n2);
                    ans = n1 * n2;
                    printf(" Multiplication :%d\n",ans);
                    break;
            case 4:

                    printf(" Enter Two Numbers\n");
                    scanf(" %d %d",&n1,&n2);
                    ans = n1 / n2;
                    printf(" Division :%d\n",ans);
                    break;
            case 5:
                  
                   exit(0);
            default:
                   printf(" Enter correct choice\n");
                   break;

      } 
     }

exit(0);
}
