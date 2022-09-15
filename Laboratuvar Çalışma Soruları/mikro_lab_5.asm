; multi-segment executable file template.

data segment 
    sutun db 25h
    satir db 0ch
    yazi db 'Turkiye$'
    yaziRengi db 47h ;zemin kirmizi karakter beyaz       
ends

code segment
start:
; set segment registers:
    mov ax, data
    mov ds, ax
    mov es, ax
    
    basla:
        call imlec
        call sil
        call yaz
        call gecikme          
        ror yaziRengi,4        
    jmp basla
        
    ; wait for any key....    
    mov ah, 1
    int 21h
    
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends 
    gecikme PROC
        mov cx,20
        bekle1:
            nop
        loop bekle1    
    gecikme ENDP 
    
    imlec PROC
        mov ah,02h
        mov bh,00h
        mov dl,sutun
        mov dh,satir
        int 10h
        ret    
    imlec ENDP

    sil PROC
        mov ah,06h
        mov al,00h
        mov cx,0c25h
        mov dx,0c2bh
        mov bh,yaziRengi
        int 10h
        ret
    sil ENDP
    
    yaz PROC
        lea dx,yazi
        mov ah,09h
        int 21h
        ret
    yaz ENDP

end start ; set entry point and stop the assembler.
