#!bin/bash
cat -n start.c
echo "==========================================="
gcc-4.4  -S -o ./tmp/start.S start.c
cat -n ./tmp/start.S
echo "==========================================="
gcc-4.4 -m32 -c -o ./tmp/start.o start.c
ld -m elf_i386 -Ttext 0xc0001500 ./tmp/start.o -o ./tmp/kernel.bin
sh ./calculator.sh 0x500 d
echo "==========================================="
sh ./xxd.sh ./tmp/kernel.bin 1280 10
echo "==========================================="
readelf -e ./tmp/kernel.bin
