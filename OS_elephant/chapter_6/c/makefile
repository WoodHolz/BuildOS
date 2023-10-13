OJBIN=$(wildcard *.bin)
.PHONY: img run clean # 表示下面的`img` `run` `clean`并不存在
img: 
	sh ./gen.sh

run: img
	/usr/bin/bochs/bin/bochs -f bochsrc.bochs 

gdb_run: img
	echo '' | /usr/bin/bochs_gdb/bin/bochs_gdb \
		-f bochsrc_gdb.bochs & \
		gdb -ex "target remote:1234"

qemu_run: img
	qemu-system-i386 -display sdl -drive file=OS.img,index=0,media=disk,format=raw,if=ide,cache=none,id=drive0 -S -s & \
		gdb -ex "target remote:1234"

clean:  
	rm -r ./build ./OS.img 
	clear
	@echo "Done! Hope to see u again!"
