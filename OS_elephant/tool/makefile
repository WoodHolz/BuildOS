OJBIN=$(wildcard *.bin)
.PHONY: img run clean # 表示下面的`img` `run` `clean`并不存在
img: 
	sh ./gen.sh

run: img
	/usr/bin/bochs/bin/bochs -f bochsrc.bochs

clean:  
	rm -r ./build ./OS.img 
	clear
