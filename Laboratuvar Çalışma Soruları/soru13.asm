; multi-segment executable file template.

data segment
  sayi db 21,42,5,17,8,9,51,12,32,3      
  ortalama db 20
ends

stack segment
    
ends

code segment
start:
; set segment registers:
    mov ax, data
    mov ds, ax
    mov es, ax
    
    
    
      
    
    
    mov bh,0
    lea si,sayi
    mov cx,10 
   
    BAS:
         mov bl,[si]  
         inc si
         cmp bl,ortalama
         ja SAYAC
    LOOP BAS
    jmp SON 
    SAYAC:
        inc bh
    LOOP BAS
    
    SON:
    mov ax, 4c00h ; exit to operating system.
    int 21h    
    
    
ends

end start ; set entry point and stop the assembler.
