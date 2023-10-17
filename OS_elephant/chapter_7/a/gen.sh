#!/bin/bash
if [ ! -d "./build" ]; then
      mkdir build
fi
if [ -e "OS.img" ]; then
     rm -rf OS.img  
fi
if [ ! -d "./build/boot" ]; then
      mkdir build/boot
fi
if [ ! -d "./build/kernel" ]; then
      mkdir build/kernel
fi
dd if=/dev/zero of=OS.img bs=512 count=117187
#bximage -hd -mode="flat" -size=32 -q OS.img

nasm -I ./boot/include/ -o ./build/boot/mbr.bin ./boot/mbr.S 
dd if=./build/boot/mbr.bin of=./OS.img bs=512 count=1  conv=notrunc

nasm -I ./boot/include/ -o ./build/boot/loader.bin ./boot/loader.S 
dd if=./build/boot/loader.bin of=./OS.img bs=512 count=4 seek=2 conv=notrunc

nasm -f elf -o ./build/kernel/print.o lib/kernel/print.S

nasm -f elf -o ./build/kernel/kernel.o kernel/kernel.S

nasm -E -o kernel/kernel.i kernel/kernel.S

gcc -m32 -I lib/kernel/ -I lib/ -I kernel/ -c -fno-builtin -o ./build/interrupt.o kernel/interrupt.c

ld build/kernel/main.o build/kernel/print.o -T kernel.ld -e main -o build/kernel/kernel.bin -m elf_i386 && \
    dd if=./build/kernel/kernel.bin of=./OS.img bs=512 count=200 seek=9 conv=notrunc
