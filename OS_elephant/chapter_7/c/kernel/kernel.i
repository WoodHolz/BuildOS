%line 1+1 kernel/kernel.S
[bits 32]
%line 4+1 kernel/kernel.S

[extern idt_table]

[section .data]
[global intr_entry_table]
intr_entry_table:

%line 35+1 kernel/kernel.S

[section .text]
[global intr_exit]
intr_exit:

 add esp, 4
 popad
 pop gs
 pop fs
 pop es
 pop ds
 add esp, 4
 iretd

%line 12+1 kernel/kernel.S
[section .text]
intr0x00entry:

 push 0

 push ds
 push es
 push fs
 push gs
 pushad


 mov al,0x20
 out 0xa0,al
 out 0x20,al

 push 0x00
 call [idt_table + 0x00*4]
 jmp intr_exit

[section .data]
 dd intr0x00entry
%line 12+1 kernel/kernel.S
[section .text]
intr0x01entry:

 push 0

 push ds
 push es
 push fs
 push gs
 pushad


 mov al,0x20
 out 0xa0,al
 out 0x20,al

 push 0x01
 call [idt_table + 0x01*4]
 jmp intr_exit

[section .data]
 dd intr0x01entry
%line 12+1 kernel/kernel.S
[section .text]
intr0x02entry:

 push 0

 push ds
 push es
 push fs
 push gs
 pushad


 mov al,0x20
 out 0xa0,al
 out 0x20,al

 push 0x02
 call [idt_table + 0x02*4]
 jmp intr_exit

[section .data]
 dd intr0x02entry
%line 12+1 kernel/kernel.S
[section .text]
intr0x03entry:

 push 0

 push ds
 push es
 push fs
 push gs
 pushad


 mov al,0x20
 out 0xa0,al
 out 0x20,al

 push 0x03
 call [idt_table + 0x03*4]
 jmp intr_exit

[section .data]
 dd intr0x03entry
%line 12+1 kernel/kernel.S
[section .text]
intr0x04entry:

 push 0

 push ds
 push es
 push fs
 push gs
 pushad


 mov al,0x20
 out 0xa0,al
 out 0x20,al

 push 0x04
 call [idt_table + 0x04*4]
 jmp intr_exit

[section .data]
 dd intr0x04entry
%line 12+1 kernel/kernel.S
[section .text]
intr0x05entry:

 push 0

 push ds
 push es
 push fs
 push gs
 pushad


 mov al,0x20
 out 0xa0,al
 out 0x20,al

 push 0x05
 call [idt_table + 0x05*4]
 jmp intr_exit

[section .data]
 dd intr0x05entry
%line 12+1 kernel/kernel.S
[section .text]
intr0x06entry:

 push 0

 push ds
 push es
 push fs
 push gs
 pushad


 mov al,0x20
 out 0xa0,al
 out 0x20,al

 push 0x06
 call [idt_table + 0x06*4]
 jmp intr_exit

[section .data]
 dd intr0x06entry
%line 12+1 kernel/kernel.S
[section .text]
intr0x07entry:

 push 0

 push ds
 push es
 push fs
 push gs
 pushad


 mov al,0x20
 out 0xa0,al
 out 0x20,al

 push 0x07
 call [idt_table + 0x07*4]
 jmp intr_exit

[section .data]
 dd intr0x07entry
%line 12+1 kernel/kernel.S
[section .text]
intr0x08entry:

 nop

 push ds
 push es
 push fs
 push gs
 pushad


 mov al,0x20
 out 0xa0,al
 out 0x20,al

 push 0x08
 call [idt_table + 0x08*4]
 jmp intr_exit

[section .data]
 dd intr0x08entry
%line 12+1 kernel/kernel.S
[section .text]
intr0x09entry:

 push 0

 push ds
 push es
 push fs
 push gs
 pushad


 mov al,0x20
 out 0xa0,al
 out 0x20,al

 push 0x09
 call [idt_table + 0x09*4]
 jmp intr_exit

[section .data]
 dd intr0x09entry
%line 12+1 kernel/kernel.S
[section .text]
intr0x0aentry:

 nop

 push ds
 push es
 push fs
 push gs
 pushad


 mov al,0x20
 out 0xa0,al
 out 0x20,al

 push 0x0a
 call [idt_table + 0x0a*4]
 jmp intr_exit

[section .data]
 dd intr0x0aentry
%line 12+1 kernel/kernel.S
[section .text]
intr0x0bentry:

 nop

 push ds
 push es
 push fs
 push gs
 pushad


 mov al,0x20
 out 0xa0,al
 out 0x20,al

 push 0x0b
 call [idt_table + 0x0b*4]
 jmp intr_exit

[section .data]
 dd intr0x0bentry
%line 12+1 kernel/kernel.S
[section .text]
intr0x0centry:

 push 0

 push ds
 push es
 push fs
 push gs
 pushad


 mov al,0x20
 out 0xa0,al
 out 0x20,al

 push 0x0c
 call [idt_table + 0x0c*4]
 jmp intr_exit

[section .data]
 dd intr0x0centry
%line 12+1 kernel/kernel.S
[section .text]
intr0x0dentry:

 nop

 push ds
 push es
 push fs
 push gs
 pushad


 mov al,0x20
 out 0xa0,al
 out 0x20,al

 push 0x0d
 call [idt_table + 0x0d*4]
 jmp intr_exit

[section .data]
 dd intr0x0dentry
%line 12+1 kernel/kernel.S
[section .text]
intr0x0eentry:

 nop

 push ds
 push es
 push fs
 push gs
 pushad


 mov al,0x20
 out 0xa0,al
 out 0x20,al

 push 0x0e
 call [idt_table + 0x0e*4]
 jmp intr_exit

[section .data]
 dd intr0x0eentry
%line 12+1 kernel/kernel.S
[section .text]
intr0x0fentry:

 push 0

 push ds
 push es
 push fs
 push gs
 pushad


 mov al,0x20
 out 0xa0,al
 out 0x20,al

 push 0x0f
 call [idt_table + 0x0f*4]
 jmp intr_exit

[section .data]
 dd intr0x0fentry
%line 12+1 kernel/kernel.S
[section .text]
intr0x10entry:

 push 0

 push ds
 push es
 push fs
 push gs
 pushad


 mov al,0x20
 out 0xa0,al
 out 0x20,al

 push 0x10
 call [idt_table + 0x10*4]
 jmp intr_exit

[section .data]
 dd intr0x10entry
%line 12+1 kernel/kernel.S
[section .text]
intr0x11entry:

 nop

 push ds
 push es
 push fs
 push gs
 pushad


 mov al,0x20
 out 0xa0,al
 out 0x20,al

 push 0x11
 call [idt_table + 0x11*4]
 jmp intr_exit

[section .data]
 dd intr0x11entry
%line 12+1 kernel/kernel.S
[section .text]
intr0x12entry:

 push 0

 push ds
 push es
 push fs
 push gs
 pushad


 mov al,0x20
 out 0xa0,al
 out 0x20,al

 push 0x12
 call [idt_table + 0x12*4]
 jmp intr_exit

[section .data]
 dd intr0x12entry
%line 12+1 kernel/kernel.S
[section .text]
intr0x13entry:

 push 0

 push ds
 push es
 push fs
 push gs
 pushad


 mov al,0x20
 out 0xa0,al
 out 0x20,al

 push 0x13
 call [idt_table + 0x13*4]
 jmp intr_exit

[section .data]
 dd intr0x13entry
%line 12+1 kernel/kernel.S
[section .text]
intr0x14entry:

 push 0

 push ds
 push es
 push fs
 push gs
 pushad


 mov al,0x20
 out 0xa0,al
 out 0x20,al

 push 0x14
 call [idt_table + 0x14*4]
 jmp intr_exit

[section .data]
 dd intr0x14entry
%line 12+1 kernel/kernel.S
[section .text]
intr0x15entry:

 push 0

 push ds
 push es
 push fs
 push gs
 pushad


 mov al,0x20
 out 0xa0,al
 out 0x20,al

 push 0x15
 call [idt_table + 0x15*4]
 jmp intr_exit

[section .data]
 dd intr0x15entry
%line 12+1 kernel/kernel.S
[section .text]
intr0x16entry:

 push 0

 push ds
 push es
 push fs
 push gs
 pushad


 mov al,0x20
 out 0xa0,al
 out 0x20,al

 push 0x16
 call [idt_table + 0x16*4]
 jmp intr_exit

[section .data]
 dd intr0x16entry
%line 12+1 kernel/kernel.S
[section .text]
intr0x17entry:

 push 0

 push ds
 push es
 push fs
 push gs
 pushad


 mov al,0x20
 out 0xa0,al
 out 0x20,al

 push 0x17
 call [idt_table + 0x17*4]
 jmp intr_exit

[section .data]
 dd intr0x17entry
%line 12+1 kernel/kernel.S
[section .text]
intr0x18entry:

 nop

 push ds
 push es
 push fs
 push gs
 pushad


 mov al,0x20
 out 0xa0,al
 out 0x20,al

 push 0x18
 call [idt_table + 0x18*4]
 jmp intr_exit

[section .data]
 dd intr0x18entry
%line 12+1 kernel/kernel.S
[section .text]
intr0x19entry:

 push 0

 push ds
 push es
 push fs
 push gs
 pushad


 mov al,0x20
 out 0xa0,al
 out 0x20,al

 push 0x19
 call [idt_table + 0x19*4]
 jmp intr_exit

[section .data]
 dd intr0x19entry
%line 12+1 kernel/kernel.S
[section .text]
intr0x1aentry:

 nop

 push ds
 push es
 push fs
 push gs
 pushad


 mov al,0x20
 out 0xa0,al
 out 0x20,al

 push 0x1a
 call [idt_table + 0x1a*4]
 jmp intr_exit

[section .data]
 dd intr0x1aentry
%line 12+1 kernel/kernel.S
[section .text]
intr0x1bentry:

 nop

 push ds
 push es
 push fs
 push gs
 pushad


 mov al,0x20
 out 0xa0,al
 out 0x20,al

 push 0x1b
 call [idt_table + 0x1b*4]
 jmp intr_exit

[section .data]
 dd intr0x1bentry
%line 12+1 kernel/kernel.S
[section .text]
intr0x1centry:

 push 0

 push ds
 push es
 push fs
 push gs
 pushad


 mov al,0x20
 out 0xa0,al
 out 0x20,al

 push 0x1c
 call [idt_table + 0x1c*4]
 jmp intr_exit

[section .data]
 dd intr0x1centry
%line 12+1 kernel/kernel.S
[section .text]
intr0x1dentry:

 nop

 push ds
 push es
 push fs
 push gs
 pushad


 mov al,0x20
 out 0xa0,al
 out 0x20,al

 push 0x1d
 call [idt_table + 0x1d*4]
 jmp intr_exit

[section .data]
 dd intr0x1dentry
%line 12+1 kernel/kernel.S
[section .text]
intr0x1eentry:

 nop

 push ds
 push es
 push fs
 push gs
 pushad


 mov al,0x20
 out 0xa0,al
 out 0x20,al

 push 0x1e
 call [idt_table + 0x1e*4]
 jmp intr_exit

[section .data]
 dd intr0x1eentry
%line 12+1 kernel/kernel.S
[section .text]
intr0x1fentry:

 push 0

 push ds
 push es
 push fs
 push gs
 pushad


 mov al,0x20
 out 0xa0,al
 out 0x20,al

 push 0x1f
 call [idt_table + 0x1f*4]
 jmp intr_exit

[section .data]
 dd intr0x1fentry
%line 12+1 kernel/kernel.S
[section .text]
intr0x20entry:

 push 0

 push ds
 push es
 push fs
 push gs
 pushad


 mov al,0x20
 out 0xa0,al
 out 0x20,al

 push 0x20
 call [idt_table + 0x20*4]
 jmp intr_exit

[section .data]
 dd intr0x20entry
