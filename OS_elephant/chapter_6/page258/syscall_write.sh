#!/bin/bash 
/usr/bin/nasm -f elf  -o syscall_write.o syscall_write.S 
/usr/bin/ld -m elf_i386 -o syscall_write.bin syscall_write.o
echo "模拟C库调用和系统调用"
./syscall_write.bin
