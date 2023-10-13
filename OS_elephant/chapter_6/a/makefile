OJBIN=$(wildcard *.bin)
.PHONY: img run clean # 表示下面的`img` `run` `clean`并不存在
img: 
	sh ./gen.sh

run: img
	/usr/bin/bochs/bin/bochs -f bochsrc.bochs 

run_gdb: img
	echo '' | /usr/bin/bochs_gdb/bin/bochs_gdb \
		-f bochsrc_gdb.bochs & \
		gdb -ex "target remote:1234"

clean:  
	rm -r ./build ./OS.img 
	clear
	@echo "Done! Hope to see u again!"
