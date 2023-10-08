/**
 * @file c_syscall.c
 * @author your name (you@domain.com)
 * @brief 
 * @version 0.1
 * @date 2023-10-07
 * 
 * @copyright Copyright (c) 2023
 * 
 */

#include <unistd.h>
int main()
{
    write(0,"stdin:in\n",9);
    write(1,"stdout:hello\n",13);
    write(2,"stderror:there\n",14);
    return 0;
}

