# sh as.sh

``` shell
hello,youyifeng!
===========================================
ELF 头：
  Magic：  7f 45 4c 46 01 01 01 00 00 00 00 00 00 00 00 00 
  类别:                              ELF32
  数据:                              2 补码，小端序 (little endian)
  Version:                           1 (current)
  OS/ABI:                            UNIX - System V
  ABI 版本:                          0
  类型:                              EXEC (可执行文件)
  系统架构:                          Intel 80386
  版本:                              0x1
  入口点地址：              0x804a011
  程序头起点：              52 (bytes into file)
  Start of section headers:          8580 (bytes into file)
  标志：             0x0
  Size of this header:               52 (bytes)
  Size of program headers:           32 (bytes)
  Number of program headers:         4
  Size of section headers:           40 (bytes)
  Number of section headers:         10
  Section header string table index: 9

节头：
  [Nr] Name              Type            Addr     Off    Size   ES Flg Lk Inf Al
  [ 0]                   NULL            00000000 000000 000000 00      0   0  0
  [ 1] .text             PROGBITS        08049000 001000 000007 00  AX  0   0 16
  [ 2] file1data         PROGBITS        0804a000 002000 000011 00   A  0   0  1
  [ 3] file1text         PROGBITS        0804a011 002011 000018 00   A  0   0  1
  [ 4] file2data         PROGBITS        0804a029 002029 000001 00   A  0   0  1
  [ 5] file2text         PROGBITS        0804a02a 00202a 000015 00   A  0   0  1
  [ 6] .bss              NOBITS          0804b040 002040 000040 00  WA  0   0  4
  [ 7] .symtab           SYMTAB          00000000 002040 0000b0 10      8   6  4
  [ 8] .strtab           STRTAB          00000000 0020f0 000044 00      0   0  1
  [ 9] .shstrtab         STRTAB          00000000 002134 00004e 00      0   0  1
Key to Flags:
  W (write), A (alloc), X (execute), M (merge), S (strings), I (info),
  L (link order), O (extra OS processing required), G (group), T (TLS),
  C (compressed), x (unknown), o (OS specific), E (exclude),
  D (mbind), p (processor specific)

程序头：
  Type           Offset   VirtAddr   PhysAddr   FileSiz MemSiz  Flg Align
  LOAD           0x000000 0x08048000 0x08048000 0x000b4 0x000b4 R   0x1000
  LOAD           0x001000 0x08049000 0x08049000 0x00007 0x00007 R E 0x1000
  LOAD           0x002000 0x0804a000 0x0804a000 0x0003f 0x0003f R   0x1000
  LOAD           0x000040 0x0804b040 0x0804b040 0x00000 0x00040 RW  0x1000

 Section to Segment mapping:
  段节...
   00     
   01     .text 
   02     file1data file1text file2data file2text 
   03     .bss 

```