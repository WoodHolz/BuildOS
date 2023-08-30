section .text
    mov eax, 0x10
    jmp $

section file2data
    file2var db 3

section file2text
   global print

print:
    ; 这里为什么sp栈顶时加，可以去看看X86(微机原理)中堆栈操作相关的知识点: 
    ; 一个栈中没有存储值时, (SP)栈顶和(BP)栈底寄存器指向同一个地址(即栈空间的'高'边界) 
    ; 在压栈时, 栈底指向栈的'高'边界, 栈顶向'低'地址移动(即做减法)
    ; 在出栈时, 栈顶向'高‘地址移动(即做加法)
    mov edx, [esp + 8] ; 取栈中先压入的参数`STRLEN`
    mov ecx, [esp + 4] ; 取栈中后压入的参数`strHello`
    
    mov ebx, 1 ; stdout 
    mov eax, 4 ; syscall 4: sys_swrite
    int 0x80
    ret