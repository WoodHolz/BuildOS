#!/bin/bash
if [ ! -d "./out" ]; then
      mkdir out
fi
if [ -e "OS.img" ]; then
      rm -rf OS.img  
fi
bximage -hd -mode="flat" -size=3 -q OS.img
nasm -I include/ -o ./out/mbr.bin mbr.S && dd if=./out/mbr.bin of=./OS.img bs=512 count=1  conv=notrunc
nasm -I include/ -o ./out/loader.bin loader.S && dd if=./out/loader.bin of=./OS.img bs=512 count=4 seek=2 conv=notrunc
