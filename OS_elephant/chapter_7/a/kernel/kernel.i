%line 1+1 kernel/kernel.S
[bits 32]
%line 4+1 kernel/kernel.S

[extern put_str]

[section .data]
intr_str db "interrupt occur!", 0xa, 0
[global intr_entry_table]
intr_entry_table:

%line 31+1 kernel/kernel.S

%line 13+1 kernel/kernel.S
[section .text]
intr0x00entry:
 push 0
 push intr_str
 call put_str
 add esp,4


 mov al,0x20
 out 0xa0,al
 out 0x20,al

 add esp,4
 iret

[section .data]
 dd intr0x00entry
%line 13+1 kernel/kernel.S
[section .text]
intr0x01entry:
 push 0
 push intr_str
 call put_str
 add esp,4


 mov al,0x20
 out 0xa0,al
 out 0x20,al

 add esp,4
 iret

[section .data]
 dd intr0x01entry
%line 13+1 kernel/kernel.S
[section .text]
intr0x02entry:
 push 0
 push intr_str
 call put_str
 add esp,4


 mov al,0x20
 out 0xa0,al
 out 0x20,al

 add esp,4
 iret

[section .data]
 dd intr0x02entry
%line 13+1 kernel/kernel.S
[section .text]
intr0x03entry:
 push 0
 push intr_str
 call put_str
 add esp,4


 mov al,0x20
 out 0xa0,al
 out 0x20,al

 add esp,4
 iret

[section .data]
 dd intr0x03entry
%line 13+1 kernel/kernel.S
[section .text]
intr0x04entry:
 push 0
 push intr_str
 call put_str
 add esp,4


 mov al,0x20
 out 0xa0,al
 out 0x20,al

 add esp,4
 iret

[section .data]
 dd intr0x04entry
%line 13+1 kernel/kernel.S
[section .text]
intr0x05entry:
 push 0
 push intr_str
 call put_str
 add esp,4


 mov al,0x20
 out 0xa0,al
 out 0x20,al

 add esp,4
 iret

[section .data]
 dd intr0x05entry
%line 13+1 kernel/kernel.S
[section .text]
intr0x06entry:
 push 0
 push intr_str
 call put_str
 add esp,4


 mov al,0x20
 out 0xa0,al
 out 0x20,al

 add esp,4
 iret

[section .data]
 dd intr0x06entry
%line 13+1 kernel/kernel.S
[section .text]
intr0x07entry:
 push 0
 push intr_str
 call put_str
 add esp,4


 mov al,0x20
 out 0xa0,al
 out 0x20,al

 add esp,4
 iret

[section .data]
 dd intr0x07entry
%line 13+1 kernel/kernel.S
[section .text]
intr0x08entry:
 nop
 push intr_str
 call put_str
 add esp,4


 mov al,0x20
 out 0xa0,al
 out 0x20,al

 add esp,4
 iret

[section .data]
 dd intr0x08entry
%line 13+1 kernel/kernel.S
[section .text]
intr0x09entry:
 push 0
 push intr_str
 call put_str
 add esp,4


 mov al,0x20
 out 0xa0,al
 out 0x20,al

 add esp,4
 iret

[section .data]
 dd intr0x09entry
%line 13+1 kernel/kernel.S
[section .text]
intr0x0aentry:
 nop
 push intr_str
 call put_str
 add esp,4


 mov al,0x20
 out 0xa0,al
 out 0x20,al

 add esp,4
 iret

[section .data]
 dd intr0x0aentry
%line 13+1 kernel/kernel.S
[section .text]
intr0x0bentry:
 nop
 push intr_str
 call put_str
 add esp,4


 mov al,0x20
 out 0xa0,al
 out 0x20,al

 add esp,4
 iret

[section .data]
 dd intr0x0bentry
%line 13+1 kernel/kernel.S
[section .text]
intr0x0centry:
 push 0
 push intr_str
 call put_str
 add esp,4


 mov al,0x20
 out 0xa0,al
 out 0x20,al

 add esp,4
 iret

[section .data]
 dd intr0x0centry
%line 13+1 kernel/kernel.S
[section .text]
intr0x0dentry:
 nop
 push intr_str
 call put_str
 add esp,4


 mov al,0x20
 out 0xa0,al
 out 0x20,al

 add esp,4
 iret

[section .data]
 dd intr0x0dentry
%line 13+1 kernel/kernel.S
[section .text]
intr0x0eentry:
 nop
 push intr_str
 call put_str
 add esp,4


 mov al,0x20
 out 0xa0,al
 out 0x20,al

 add esp,4
 iret

[section .data]
 dd intr0x0eentry
%line 13+1 kernel/kernel.S
[section .text]
intr0x0fentry:
 push 0
 push intr_str
 call put_str
 add esp,4


 mov al,0x20
 out 0xa0,al
 out 0x20,al

 add esp,4
 iret

[section .data]
 dd intr0x0fentry
%line 13+1 kernel/kernel.S
[section .text]
intr0x10entry:
 push 0
 push intr_str
 call put_str
 add esp,4


 mov al,0x20
 out 0xa0,al
 out 0x20,al

 add esp,4
 iret

[section .data]
 dd intr0x10entry
%line 13+1 kernel/kernel.S
[section .text]
intr0x11entry:
 nop
 push intr_str
 call put_str
 add esp,4


 mov al,0x20
 out 0xa0,al
 out 0x20,al

 add esp,4
 iret

[section .data]
 dd intr0x11entry
%line 13+1 kernel/kernel.S
[section .text]
intr0x12entry:
 push 0
 push intr_str
 call put_str
 add esp,4


 mov al,0x20
 out 0xa0,al
 out 0x20,al

 add esp,4
 iret

[section .data]
 dd intr0x12entry
%line 13+1 kernel/kernel.S
[section .text]
intr0x13entry:
 push 0
 push intr_str
 call put_str
 add esp,4


 mov al,0x20
 out 0xa0,al
 out 0x20,al

 add esp,4
 iret

[section .data]
 dd intr0x13entry
%line 13+1 kernel/kernel.S
[section .text]
intr0x14entry:
 push 0
 push intr_str
 call put_str
 add esp,4


 mov al,0x20
 out 0xa0,al
 out 0x20,al

 add esp,4
 iret

[section .data]
 dd intr0x14entry
%line 13+1 kernel/kernel.S
[section .text]
intr0x15entry:
 push 0
 push intr_str
 call put_str
 add esp,4


 mov al,0x20
 out 0xa0,al
 out 0x20,al

 add esp,4
 iret

[section .data]
 dd intr0x15entry
%line 13+1 kernel/kernel.S
[section .text]
intr0x16entry:
 push 0
 push intr_str
 call put_str
 add esp,4


 mov al,0x20
 out 0xa0,al
 out 0x20,al

 add esp,4
 iret

[section .data]
 dd intr0x16entry
%line 13+1 kernel/kernel.S
[section .text]
intr0x17entry:
 push 0
 push intr_str
 call put_str
 add esp,4


 mov al,0x20
 out 0xa0,al
 out 0x20,al

 add esp,4
 iret

[section .data]
 dd intr0x17entry
%line 13+1 kernel/kernel.S
[section .text]
intr0x18entry:
 nop
 push intr_str
 call put_str
 add esp,4


 mov al,0x20
 out 0xa0,al
 out 0x20,al

 add esp,4
 iret

[section .data]
 dd intr0x18entry
%line 13+1 kernel/kernel.S
[section .text]
intr0x19entry:
 push 0
 push intr_str
 call put_str
 add esp,4


 mov al,0x20
 out 0xa0,al
 out 0x20,al

 add esp,4
 iret

[section .data]
 dd intr0x19entry
%line 13+1 kernel/kernel.S
[section .text]
intr0x1aentry:
 nop
 push intr_str
 call put_str
 add esp,4


 mov al,0x20
 out 0xa0,al
 out 0x20,al

 add esp,4
 iret

[section .data]
 dd intr0x1aentry
%line 13+1 kernel/kernel.S
[section .text]
intr0x1bentry:
 nop
 push intr_str
 call put_str
 add esp,4


 mov al,0x20
 out 0xa0,al
 out 0x20,al

 add esp,4
 iret

[section .data]
 dd intr0x1bentry
%line 13+1 kernel/kernel.S
[section .text]
intr0x1centry:
 push 0
 push intr_str
 call put_str
 add esp,4


 mov al,0x20
 out 0xa0,al
 out 0x20,al

 add esp,4
 iret

[section .data]
 dd intr0x1centry
%line 13+1 kernel/kernel.S
[section .text]
intr0x1dentry:
 nop
 push intr_str
 call put_str
 add esp,4


 mov al,0x20
 out 0xa0,al
 out 0x20,al

 add esp,4
 iret

[section .data]
 dd intr0x1dentry
%line 13+1 kernel/kernel.S
[section .text]
intr0x1eentry:
 nop
 push intr_str
 call put_str
 add esp,4


 mov al,0x20
 out 0xa0,al
 out 0x20,al

 add esp,4
 iret

[section .data]
 dd intr0x1eentry
%line 13+1 kernel/kernel.S
[section .text]
intr0x1fentry:
 push 0
 push intr_str
 call put_str
 add esp,4


 mov al,0x20
 out 0xa0,al
 out 0x20,al

 add esp,4
 iret

[section .data]
 dd intr0x1fentry
%line 13+1 kernel/kernel.S
[section .text]
intr0x20entry:
 push 0
 push intr_str
 call put_str
 add esp,4


 mov al,0x20
 out 0xa0,al
 out 0x20,al

 add esp,4
 iret

[section .data]
 dd intr0x20entry
