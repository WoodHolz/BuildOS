# result

```shell
gcc -E main.c

# 0 "main.c"
# 0 "<built-in>"
# 0 "<命令行>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<命令行>" 2
# 1 "main.c"
extern int printf(__const char *__restrict __format,...);
# 1 "func_inc.d" 1
void myfunc(char* str)
{
    printf(str);
}
# 3 "main.c" 2

void
main()
{
    myfunc("hello world\n");
}


gcc -o main.bin -g main.c -v

使用内建 specs。
COLLECT_GCC=gcc
COLLECT_LTO_WRAPPER=/usr/lib/gcc/x86_64-pc-linux-gnu/13.2.1/lto-wrapper
目标：x86_64-pc-linux-gnu
配置为：/build/gcc/src/gcc/configure --enable-languages=ada,c,c++,d,fortran,go,lto,objc,obj-c++ --enable-bootstrap --prefix=/usr --libdir=/usr/lib --libexecdir=/usr/lib --mandir=/usr/share/man --infodir=/usr/share/info --with-bugurl=https://bugs.archlinux.org/ --with-build-config=bootstrap-lto --with-linker-hash-style=gnu --with-system-zlib --enable-__cxa_atexit --enable-cet=auto --enable-checking=release --enable-clocale=gnu --enable-default-pie --enable-default-ssp --enable-gnu-indirect-function --enable-gnu-unique-object --enable-libstdcxx-backtrace --enable-link-serialization=1 --enable-linker-build-id --enable-lto --enable-multilib --enable-plugin --enable-shared --enable-threads=posix --disable-libssp --disable-libstdcxx-pch --disable-werror
线程模型：posix
支持的 LTO 压缩算法：zlib zstd
gcc 版本 13.2.1 20230801 (GCC) 
COLLECT_GCC_OPTIONS='-o' 'main.bin' '-g' '-v' '-mtune=generic' '-march=x86-64' '-dumpdir' 'main.bin-'
 /usr/lib/gcc/x86_64-pc-linux-gnu/13.2.1/cc1 -quiet -v main.c -quiet -dumpdir main.bin- -dumpbase main.c -dumpbase-ext .c -mtune=generic -march=x86-64 -g -version -o /tmp/ccfvujdr.s
GNU C17 (GCC) 版本 13.2.1 20230801 (x86_64-pc-linux-gnu)
        由 GNU C 版本 13.2.1 20230801 编译，GMP 版本 6.3.0，MPFR 版本 4.2.0-p12，MPC 版本 1.3.1，isl 版本 isl-0.26-GMP

警告：MPFR 头文件版本 4.2.0-p12 与库版本 4.2.1 不同。
GGC 准则：--param ggc-min-expand=100 --param ggc-min-heapsize=131072
忽略不存在的目录“/usr/lib/gcc/x86_64-pc-linux-gnu/13.2.1/../../../../x86_64-pc-linux-gnu/include”
#include "..." 搜索从这里开始：
#include <...> 搜索从这里开始：
 /usr/lib/gcc/x86_64-pc-linux-gnu/13.2.1/include
 /usr/local/include
 /usr/lib/gcc/x86_64-pc-linux-gnu/13.2.1/include-fixed
 /usr/include
搜索列表结束。
Compiler executable checksum: 865c2688a4f1e3f13d6bf2cc8fd98762
COLLECT_GCC_OPTIONS='-o' 'main.bin' '-g' '-v' '-mtune=generic' '-march=x86-64' '-dumpdir' 'main.bin-'
 as -v --gdwarf-5 --64 -o /tmp/ccksEl1L.o /tmp/ccfvujdr.s
GNU assembler version 2.41.0 (x86_64-pc-linux-gnu) using BFD version (GNU Binutils) 2.41.0
COMPILER_PATH=/usr/lib/gcc/x86_64-pc-linux-gnu/13.2.1/:/usr/lib/gcc/x86_64-pc-linux-gnu/13.2.1/:/usr/lib/gcc/x86_64-pc-linux-gnu/:/usr/lib/gcc/x86_64-pc-linux-gnu/13.2.1/:/usr/lib/gcc/x86_64-pc-linux-gnu/
LIBRARY_PATH=/usr/lib/gcc/x86_64-pc-linux-gnu/13.2.1/:/usr/lib/gcc/x86_64-pc-linux-gnu/13.2.1/../../../../lib/:/lib/../lib/:/usr/lib/../lib/:/usr/lib/gcc/x86_64-pc-linux-gnu/13.2.1/../../../:/lib/:/usr/lib/
COLLECT_GCC_OPTIONS='-o' 'main.bin' '-g' '-v' '-mtune=generic' '-march=x86-64' '-dumpdir' 'main.bin.'
 /usr/lib/gcc/x86_64-pc-linux-gnu/13.2.1/collect2 -plugin /usr/lib/gcc/x86_64-pc-linux-gnu/13.2.1/liblto_plugin.so -plugin-opt=/usr/lib/gcc/x86_64-pc-linux-gnu/13.2.1/lto-wrapper -plugin-opt=-fresolution=/tmp/cc1eVPqN.res -plugin-opt=-pass-through=-lgcc -plugin-opt=-pass-through=-lgcc_s -plugin-opt=-pass-through=-lc -plugin-opt=-pass-through=-lgcc -plugin-opt=-pass-through=-lgcc_s --build-id --eh-frame-hdr --hash-style=gnu -m elf_x86_64 -dynamic-linker /lib64/ld-linux-x86-64.so.2 -pie -o main.bin /usr/lib/gcc/x86_64-pc-linux-gnu/13.2.1/../../../../lib/Scrt1.o /usr/lib/gcc/x86_64-pc-linux-gnu/13.2.1/../../../../lib/crti.o /usr/lib/gcc/x86_64-pc-linux-gnu/13.2.1/crtbeginS.o -L/usr/lib/gcc/x86_64-pc-linux-gnu/13.2.1 -L/usr/lib/gcc/x86_64-pc-linux-gnu/13.2.1/../../../../lib -L/lib/../lib -L/usr/lib/../lib -L/usr/lib/gcc/x86_64-pc-linux-gnu/13.2.1/../../.. /tmp/ccksEl1L.o -lgcc --push-state --as-needed -lgcc_s --pop-state -lc -lgcc --push-state --as-needed -lgcc_s --pop-state /usr/lib/gcc/x86_64-pc-linux-gnu/13.2.1/crtendS.o /usr/lib/gcc/x86_64-pc-linux-gnu/13.2.1/../../../../lib/crtn.o
COLLECT_GCC_OPTIONS='-o' 'main.bin' '-g' '-v' '-mtune=generic' '-march=x86-64' '-dumpdir' 'main.bin.'

```
