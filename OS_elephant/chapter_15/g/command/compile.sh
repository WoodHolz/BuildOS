#!/bin/bash
####  此脚本应该在command目录下执行

if [[ ! -d "../lib" || ! -d "../build" ]];then
   echo "dependent dir don\`t exist!"
   cwd=$(pwd)
   cwd=${cwd##*/}
   cwd=${cwd%/}
   if [[ $cwd != "command" ]];then
      echo -e "you\`d better in command dir\n"
   fi 
   exit
fi

BIN="prog_no_arg"
CFLAGS="-m32 -Wall -c -fno-builtin -W -Wstrict-prototypes \
      -Wmissing-prototypes -Wsystem-headers -fno-stack-protector -g"
LIB="../lib/"
OBJS="../build/string.o ../build/syscall.o \
      ../build/stdio.o ../build/assert.o"
DD_IN=$BIN
DD_OUT="./../FS.img" 

# gcc $CFLAGS -I $LIB -o $BIN".o" $BIN".c"
# ld -e main $BIN -o $BIN".o" $OBJS
# SEC_CNT=$(ls -l $BIN|awk '{printf("%d", ($5+511)/512)}')
# 编译源文件
gcc $CFLAGS -I "$LIB" -o "$BIN".o "$BIN".c
# 将目标文件与依赖的对象文件链接
ld -melf_i386 -e main "$BIN".o $OBJS -o "$BIN"
SEC_CNT=$(ls -l $BIN|awk '{printf("%d", ($5+511)/512)}')


if [[ -f $BIN ]]; then
   dd if=./$DD_IN of=$DD_OUT bs=512 \
   count=$SEC_CNT seek=300 conv=notrunc
fi

##########   以上核心就是下面这三条命令   ##########
# gcc -m32 -Wall -c -fno-builtin -W -Wstrict-prototypes -Wmissing-prototypes \
#   -Wsystem-headers -fno-stack-protector -g -I ../lib -o prog_no_arg.o prog_no_arg.c
# ld -melf_i386 -e main prog_no_arg.o ../build/string.o ../build/syscall.o\
#   ../build/stdio.o ../build/assert.o -o prog_no_arg
# dd if=prog_no_arg of=$(pwd)/../FS.img \
#   bs=512 count=10 seek=300 conv=notrunc
