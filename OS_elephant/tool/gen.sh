if [ ! -d "./build" ]; then
    mkdir build
fi
if [ -e "OS.img" ]; then
    rm -rf OS.img  
fi
bximage_gdb -hd -mode="flat" -size=3 -q OS.img
nasm -I include/ -o ./build/mbr_toloader.bin mbr_toloader.S && dd if=./build/mbr_toloader.bin of=./OS.img bs=512 count=1  conv=notrunc
nasm -I include/ -o ./build/16push.bin 16push.S  && dd if=./build/16push.bin of=./OS.img bs=512 count=1 seek=2 conv=notrunc