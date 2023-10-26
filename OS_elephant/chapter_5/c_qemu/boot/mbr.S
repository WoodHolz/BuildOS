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
      mov     ax, 0600h
      mov     bx, 0700h
      mov     cx, 0                   ; 左上角: (0, 0)
      mov     dx, 184fh		   ; 右下角: (80,25),
                              ; 因为VGA文本模式中，一行只能容纳80个字符,共25行。
                              ; 下标从0开始，所以0x18=24,0x4f=79
      int     10h                     ; int 10h

      ; 输出字符串:MBR
      mov byte [gs:0x00],'1'
      mov byte [gs:0x01],0xA4

      mov byte [gs:0x02],' '
      mov byte [gs:0x03],0xA4

      mov byte [gs:0x04],'M'
      mov byte [gs:0x05],0xA4	   ;A表示绿色背景闪烁，4表示前景色为红色

      mov byte [gs:0x06],'B'
      mov byte [gs:0x07],0xA4

      mov byte [gs:0x08],'R'
      mov byte [gs:0x09],0xA4
            
      mov eax,LOADER_START_SECTOR ; 起始扇区lba地址
      mov bx,LOADER_BASE_ADDR ; 写入的地址
      mov cx,4 ; 待读入的扇区数
      ; call rd_disk_m_16 ; 以下读取程序的起始部分（一个扇区）
      call rd_disk_BIOS ; 以下读取程序的起始部分（一个扇区）
            
      ; call temp
      jmp LOADER_BASE_ADDR + 0x300
      
;-------------------------------------------------------------------------------
;功能:读取硬盘n个扇区
rd_disk_BIOS:	   
;-------------------------------------------------------------------------------
      ; eax=LBA扇区号
      ; ebx=将数据写入的内存地址
      ; ecx=读入的扇区数
      mov si, ax     ; 备份ax
      mov di, cx     ; 备份cx

      mov ah, 0x02   ; 功能号2，读取扇区
      mov al, cl     ; 读取的扇区数
      mov ch, 0      ; 柱面号为0
      mov cl, 2      ; 起始扇区号，从2开始读取
      mov dh, 0      ; 磁头号为0
      mov dl, 0x80   ; 驱动器号为0x80 (第一个硬盘)

      int 0x13       ; 调用BIOS中断读取扇区

      ; jc .error      ; 如果CF标志位为1，表示读取失败，跳转到.error标签

      ret

; .error:
;       ; 错误处理，例如打印错误信息等
;       mov [REGISTER_AX], ax
;       mov ax, DISK_READ_ERROR
;       call print
;       mov ax, [REGISTER_AX]
;       call print_hex
;       jmp $
;       ret

;    temp:
;       mov byte [gs:0x24],'k'
;       mov byte [gs:0x09],0xA4
;       ret

      times 510-($-$$) db 0
      db 0x55,0xaa