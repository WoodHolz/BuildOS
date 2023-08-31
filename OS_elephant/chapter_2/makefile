OBJS_BIN=mbr.bin

# 表示将以.S为扩展名的汇编源文件编译为以.bin为扩展名的二进制文件。
%.bin: %.S
	nasm $^ -o $@ 

img: ${OBJS_BIN}
#创建一个大小为30MB的全0磁盘映像文件。
#	dd if=/dev/zero of=mbr.img bs=512 count=61440
#mbr.bin文件写入mbr.img磁盘映像文件的第一个扇区。
	dd if=$(OBJS_BIN) of=hd60M.img bs=512 count=1 conv=notrunc

#定义了一个名为run的目标，依赖于OBJS_BIN，表示要运行程序。
run: img
	bochs -f bochsrc.disk

clean:
	rm -rf *.img  *.out *.lock *.bin 