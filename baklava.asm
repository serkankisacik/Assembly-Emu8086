; multi-segment executable file template.

data segment
   tmp db 1
   sayac db ?    
   sutun db 10
   satir db 0
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

    mov cx,5
    lop:
    
        mov bl,tmp    
        mov sayac,bl
        call imlec 
        
        lop2:                 
            call yaz        
        dec sayac
        jnz lop2    
        
        add tmp,2    
        inc satir
        dec sutun
    
    loop lop
     
    dec satir 
    inc sutun
    sub tmp,2 
    mov cx,5
    lop3:
    
        mov bl,tmp   
        mov sayac,bl
        call imlec 
        
        lop4:                 
            call yaz        
        dec sayac
        jnz lop4    
        
        sub tmp,2    
        inc satir
        inc sutun
    
    loop lop3
    
    
    int 20h   
ends
    yaz proc
        mov dl,'*'
        mov ah,02
        int 21h
        ret
    yaz endp 
    
    imlec proc
        mov ah,02h
        mov bh,00h     
        mov dl,sutun     ;sutun numarasi
        mov dh,satir      ;satir numarasi    
        int 10h
        ret
    imlec endp

end start ; set entry point and stop the assembler.
