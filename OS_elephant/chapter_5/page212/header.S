header:
    program_length dd program_end-program_start ; 程序长度 == 程序结尾 - 程序开头的地址
    start_addr dd program_start ; 程序开始的地址
body:
program_start:
    mov ax,0x1234
    jmp $
program_end:

