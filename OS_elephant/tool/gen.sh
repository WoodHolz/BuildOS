nasm 16push.S -o 16push.bin
dd if=16push.bin of=./OS.img bs=512 count=1 conv=notrunc