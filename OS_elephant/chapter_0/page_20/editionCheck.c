/**
 *  这是一个验证小端字节序 高精度类型转换为低精度类型 丢弃高字节 保留低字节  
*/
# include <stdio.h>
int main()
{
    unsigned int a = 0x12345678;
    printf("int %x,short %x\n", a, (short)a); // the answer shall be "int 12345678,short 5678"
    return 0;
}
