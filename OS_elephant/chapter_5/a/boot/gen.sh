if [ ! -d "./build" ]; then
    mkdir build
fi
if [ -e "OS.img" ]; then
    rm -rf OS.img  
fi
bximage_gdb -hd -mode="flat" -size=3 -q OS.img
nasm -I include/ -o ./build/mbr.bin mbr.S && dd if=./build/mbr.bin of=./OS.img bs=512 count=1  conv=notrunc
nasm -I include/ -o ./build/loader.bin loader.S  && dd if=./build/loader.bin of=./OS.img bs=512 count=4 seek=2 conv=notrunc