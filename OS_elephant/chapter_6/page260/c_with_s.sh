#!/bin/bash 
gcc -c -m32  C_with_S_c.c -o C_with_S_c.o
nasm -f elf C_with_S_S.S -o C_with_S_S.o 
ld -melf_i386  C_with_S_c.o C_with_S_S.o -o C_with_S.bin
echo "汇编调用C函数和C函数调用汇编"
./C_with_S.bin 

