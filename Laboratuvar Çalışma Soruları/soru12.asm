; multi-segment executable file template.

data segment
    sayi db 11111111b
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:
; set segment registers:
    mov ax, data
    mov ds, ax
    mov es, ax

    mov ah,0         
    mov cx,8
    mov al,sayi
    
    BAS:
        shr al,1
        jc KONTROL     
        
    LOOP BAS
    jmp SON
    
    KONTROL:
        inc ah
    LOOP BAS
    
    SON:
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.
