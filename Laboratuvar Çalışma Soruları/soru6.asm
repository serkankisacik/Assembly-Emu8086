; multi-segment executable file template.

data segment
   isim db 'aazer'  
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
               
    mov al,0  
    mov bl,0
    mov cx,5 
    lea si,isim          
               
    BAS:
        mov al,[si]
        inc si
        cmp al,61h
        je SAY
    LOOP BAS
    jmp SON
    SAY:
       inc bl
    LOOP BAS 
    
    SON:
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.
