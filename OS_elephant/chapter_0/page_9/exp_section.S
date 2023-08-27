;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; 这段代码初始化段, 因为 add ax, 0x900 使用的是真实物理地址
; 所以需要右移 4 位
; 为了让自己定义的段存储的地址左移 4 位后与真实物理地址相同
; 其实就是让学习者感受虚拟地址到物理地址的转换过程
; ~~ 个人认为这个例子其实会让一些初学者变得更迷糊 ~~

section my_code vstart=0
; 通过远跳转的方式给代码段寄存器 CS 赋值 0x90
  jmp 0x90: start
start: ; 标号 start 只是为了 jmp 跳到下一条指令
; 初始化数据段寄存器 DS
  mov ax,section.my_data.start
  add ax,0x900 ; 加 0x900 是因为本程序会被 mbr 加载到内存 0x900 处
  shr ax,4 ; 提前右移 4 位,因为段基址会被 CPU 段部件左移 4 位
  mov ds,ax 
; 初始化栈段寄存器 SS
  mov ax,section.my_stack.start
  add ax,0x900 ; 加 0x900 是因为本程序会被 mbr 加载到内存 0x900 处
  shr ax,4 ; 提前右移 4 位,因为段基址会被 CPU 段部件左移 4 位
  mov ss,ax
  mov sp,stack_top ; 初始化栈指针
; 此时 CS､ DS､ SS 段寄存器已经初始化完成,下面开始正式工作

  push word [var2] ; 变量名 var2 编译后变成 0x4

  jmp $ ; 无限循环执行`jmp $`, 即 ip 寄存器的值不变

; 自定义的数据段
section my_data align=16 vstart=0
  var1 dd 0x1
  var2 dd 0x6

; 自定义的栈段
section my_stack align=16 vstart=0
  times 128 db 0
stack_top: ; 此处用于栈顶,标号作用域是当前 section,
           ; 以当前 section 的 vstart 为基数
