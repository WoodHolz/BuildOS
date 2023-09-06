#!/bin/bash
if [ ! -d "./out" ]; then
      mkdir out
fi
if [ -e "hd60M.img" ]; then
     rm -rf hd60M.img  
fi
bximage_gdb -hd -mode="flat" -size=3 -q hd60M.img
nasm -I include/ -o ./out/mbr_toloader.bin mbr_toloader.S && dd if=./out/mbr_toloader.bin of=./hd60M.img bs=512 count=1  conv=notrunc
nasm -I include/ -o ./out/loader.bin loader.S && dd if=./out/loader.bin of=./hd60M.img bs=512 count=1 seek=2 conv=notrunc