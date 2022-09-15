;Soru 3: 1.kismin cevabi..

data segment 
    metin db 'Karabuk/Universitesi/Bilgisayar/Muh./Bolumu'         
ends

code segment
start:
; set segment registers:
    mov ax, data
    mov ds, ax
    mov es, ax
    
    cld
    mov al,'/'
    lea di,metin
    mov ah,'_'
    mov cx,43
    bas:
    repne scasb
    jne son
    mov [di-1], ah
    jmp bas
    son:
    
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends     
end start ; set entry point and stop the assembler.
