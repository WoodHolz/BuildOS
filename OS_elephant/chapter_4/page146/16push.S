;section loader vstart=0x900
%include "boot.inc"
section loader vstart=LOADER_BASE_ADDR

mov byte [gs:0x2e],'g'
mov byte [gs:0x2f],0xA4

mov sp,0x900
push byte 0x7
push word 0x8
push dword 0x90 

jmp $
