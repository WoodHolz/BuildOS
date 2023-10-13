/**
 * @file base_asm.c
 * @author your name (you@domain.com)
 * @brief 
 * @version 0.1
 * @date 2023-10-14
 * 
 * @copyright Copyright (c) 2023
 * 
 */
#include <stdio.h>
int in_a=666,in_b=333,out_sum;
int main()
{
    asm("\
        pusha;\
        movl in_a,%eax;\
        movl in_b,%ebx;\
        addl %ebx,%eax;\
        movl %eax,out_sum;\
        popa;\
        ");
    printf("sum is %d\n",out_sum);
    return 0 ;
}
