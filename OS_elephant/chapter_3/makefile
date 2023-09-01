OBJS_BIN=mbr_gpu.bin

# 表示将以.S为扩展名的汇编源文件编译为以.bin为扩展名的二进制文件。
%.bin: %.S
	nasm $^ -o $@ 

img: ${OBJS_BIN}
	dd if=$(OBJS_BIN) of=hd60M.img bs=512 count=1 conv=notrunc

run: img
	bochs_gdb -f C3_arch_wsl.bochs

clean:
	rm -rf *.img  *.out *.lock *.bin 