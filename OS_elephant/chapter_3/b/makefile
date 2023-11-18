BUILD_DIR = ./build
DISK_IMG = OS.img
ENTRY_TEXT = ./kernel.ld
AS = nasm
#CC = gcc
LD = ld
ASFLAGS = -f elf 
ASBINLIB = -I include/
CFLAGS = -m32 -Wall $(LIB) -c -fno-builtin -W -Wstrict-prototypes \
         -Wmissing-prototypes -fno-stack-protector
LDFLAGS = -melf_i386 -T $(ENTRY_TEXT) -e main -Map $(BUILD_DIR)/kernel.map



# the path of bochs
BOCHS = /usr/bin/bochs/bin/bochs
BOCHS_GDB = /usr/bin/bochs_gdb/bin/bochs_gdb
BXIMAGE = /usr/bin/bochs/bin/bximage

##############     MBR代码编译     ############### 
$(BUILD_DIR)/mbr.bin: mbr.S 
	$(AS) $(ASBINLIB) $< -o $@

##############     bootloader代码编译     ###############
$(BUILD_DIR)/loader.bin: loader.S 
	$(AS) $(ASBINLIB) $< -o $@



.PHONY : mk_dir hd clean all run gdb_run

mk_dir:
	if [ ! -d $(BUILD_DIR) ];then mkdir $(BUILD_DIR);fi

mk_img:
#	dd if=/dev/zero of=$(DISK_IMG) bs=512 count=117187
	if [ ! -e $(DISK_IMG) ];then $(BXIMAGE) -hd -mode="flat" -size=32 -q $(DISK_IMG);fi

hd:
	dd if=$(BUILD_DIR)/mbr.bin of=$(DISK_IMG) bs=512 count=1  conv=notrunc
	dd if=$(BUILD_DIR)/loader.bin of=$(DISK_IMG) bs=512 count=4 seek=2 conv=notrunc
#	dd if=./out/loader.bin of=./hd60M.img bs=512 count=1 seek=2 conv=notrunc

clean:
	rm $(BUILD_DIR) -r && rm $(DISK_IMG)
	clear
	@echo "Done! Hope to see u again!"

build:  $(BUILD_DIR)/mbr.bin $(BUILD_DIR)/loader.bin

all: mk_dir mk_img build hd


run: all
	$(BOCHS) -f bochsrc.bochs

gdb_run: all
	echo '' | $(BOCHS_GDB) \
		-f bochsrc_gdb.bochs & \
		gdb -ex "target remote:1234"

qemu: all
	qemu-system-i386 \
    -name 'guest=WoodHolz' \
    -m 4M \
    -boot 'menu=on,strict=on' \
    -drive 'file=OS.img,format=raw'