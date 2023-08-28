section .bss
    resb 2 * 32     ; 分配 64 字节的未初始化空间

section file1data   ; 自定义数据段`file1date`
    strHello db "hello,youyifeng!", 0Ah
    STRLEN equ $-strHello ; 利用`$`当前的位置减去`strHello`得到长度

section file1text   ; 自定义代码段`file1text1`
    extern print    ; `extern`表示(告诉链接器)`print`来自外部
    global _start   ; 声明全局入口标签"_start", 让链接器把_start作为程序入口

_start:
    push STRLEN
    push strHello
    call print

    mov ebx, 0      ; 设置ebx寄存器为0，通常用作返回代码
    mov eax, 1      ; syscall 1: sys_exit 
    int 0x80        ; 执行系统调用
