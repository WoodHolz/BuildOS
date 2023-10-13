/**
 * @file reg_constraint.c
 * @author your name (you@domain.com)
 * @brief 
 * @version 0.1
 * @date 2023-10-14
 * 
 * @copyright Copyright (c) 2023
 * 
 */
#include <stdio.h>
int main()
{
    int in_a=1,in_b=333,out_sum;
    asm("addl %%ebx,%%eax":"=a"(out_sum):"a"(in_a),"b"(in_b));
    printf("sum is %d\n",out_sum);
    return 0;
}
