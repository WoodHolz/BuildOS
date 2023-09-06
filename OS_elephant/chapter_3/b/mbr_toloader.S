;主引导程序 
;------------------------------------------------------------
%include "boot.inc"
SECTION MBR vstart=0x7c00         
   mov ax,cs      
   mov ds,ax
   mov es,ax
   mov ss,ax
   mov fs,ax
   mov sp,0x7c00
   mov ax,0xb800
   mov gs,ax

; 清屏
;利用0x06号功能，上卷全部行，则可清屏。
; -----------------------------------------------------------
;INT 0x10   功能号:0x06	   功能描述:上卷窗口
;------------------------------------------------------
;输入：
;AH 功能号= 0x06
;AL = 上卷的行数(如果为0,表示全部)
;BH = 上卷行属性
;(CL,CH) = 窗口左上角的(X,Y)位置
;(DL,DH) = 窗口右下角的(X,Y)位置
;无返回值：
   mov ax, 0x600     ; ah: 06h al: 00h(置零0️⃣)
   mov bx, 0x700     ; bh: 07h bl: 00h(置零0️⃣)
   mov cx, 0         ; ch: 00h cl: 00h 左上角: (0, 0)
   ; mov dx, 0x184f  ; 与下面两行结果相同, 为了方便理解把dl, dh的赋值分两步
   mov dl, 0x4f
   mov dh, 0x18	   ; dh: 18h dl: 4fh 右下角: (80, 25), 
			            ; VGA文本模式中, 一行只能容纳80个字符, 共25行。
			            ; 下标是从0开始, 所以设置`dh`存储的值为0x18=24, 而`dl`中的是0x4f=79
   int 0x10          ; int 0x10

   ; 输出字符串:MBR
  mov byte [gs: 00h], 'H'
   mov byte [gs: 01h], 00010100b ; 不闪烁 背景蓝色 字体红色 这里使用二进制方便对应`rgb`字符显示表

   mov byte [gs: 02h], 'E'
   mov byte [gs: 03h], 10101100b ; 闪烁 背景绿色 字体浅红色

   mov byte [gs: 04h], 'L'
   mov byte [gs: 05h], 10100100b

   mov byte [gs: 06h], 'L'
   mov byte [gs: 07h], 10100100b

   mov byte [gs: 08h], 'O'
   mov byte [gs: 09h], 10100100b

   mov byte [gs: 0ah], ' '
   mov byte [gs: 0bh], 10100100b

   mov byte [gs: 0ch], 'W'
   mov byte [gs: 0dh], 10100100b

   mov byte [gs: 0eh], 'O'
   mov byte [gs: 0fh], 10100100b

   mov byte [gs: 10h], 'R'
   mov byte [gs: 11h], 10100100b

   mov byte [gs: 12h], 'L'
   mov byte [gs: 13h], 10100100b

   mov byte [gs: 14h], 'D'
   mov byte [gs: 15h], 10100100b
	 
   mov eax,LOADER_START_SECTOR	 ; 起始扇区lba地址
   mov bx,LOADER_BASE_ADDR       ; 写入的地址
   mov cx,1			 ; 待读入的扇区数
   call rd_disk_m_16		 ; 以下读取程序的起始部分（一个扇区）
  
   jmp LOADER_BASE_ADDR
       
;-------------------------------------------------------------------------------
;功能:读取硬盘n个扇区
rd_disk_m_16:	   
;-------------------------------------------------------------------------------
				       ; eax=LBA扇区号
				       ; ebx=将数据写入的内存地址
				       ; ecx=读入的扇区数
      mov esi,eax	  ;备份eax
      mov di,cx		  ;备份cx
;读写硬盘:
;第1步：设置要读取的扇区数
      mov dx,0x1f2
      mov al,cl
      out dx,al            ;读取的扇区数

      mov eax,esi	   ;恢复ax

;第2步：将LBA地址存入0x1f3 ~ 0x1f6

      ;LBA地址7~0位写入端口0x1f3
      mov dx,0x1f3                       
      out dx,al                          

      ;LBA地址15~8位写入端口0x1f4
      mov cl,8
      shr eax,cl
      mov dx,0x1f4
      out dx,al

      ;LBA地址23~16位写入端口0x1f5
      shr eax,cl
      mov dx,0x1f5
      out dx,al

      shr eax,cl
      and al,0x0f	   ;lba第24~27位
      or al,0xe0	   ; 设置7～4位为1110,表示lba模式
      mov dx,0x1f6
      out dx,al

;第3步：向0x1f7端口写入读命令，0x20 
      mov dx,0x1f7
      mov al,0x20                        
      out dx,al

;第4步：检测硬盘状态
  .not_ready:
      ;同一端口，写时表示写入命令字，读时表示读入硬盘状态
      nop
      in al,dx
      and al,0x88	   ;第4位为1表示硬盘控制器已准备好数据传输，第7位为1表示硬盘忙
      cmp al,0x08
      jnz .not_ready	   ;若未准备好，继续等。

;第5步：从0x1f0端口读数据
      mov ax, di
      mov dx, 256
      mul dx
      mov cx, ax	   ; di为要读取的扇区数，一个扇区有512字节，每次读入一个字，
			   ; 共需di*512/2次，所以di*256
      mov dx, 0x1f0
  .go_on_read:
      in ax,dx
      mov [bx],ax
      add bx,2		  
      loop .go_on_read
      ret

   times 510-($-$$) db 0
   db 0x55,0xaa
