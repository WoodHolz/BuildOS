OJBIN=$(wildcard *.bin)
.PHONY: img run clean # 表示下面的`img` `run` `clean`并不存在
img: 
	sh ./gen.sh

# OJBIN: img
# 	nasm -I ./boot/include -o @^.bin  

run: img
	/usr/bin/bochs/bin/bochs -f bochsrc.bochs

run_gdb: img
	/usr/bin/bochs_gdb/bin/bochs_gdb -f bochsrc_gdb.bochs

clean:  
	rm -r ./build ./OS.img 
	clear
