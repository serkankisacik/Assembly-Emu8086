; multi-segment executable file template.

data segment
    sayi1 db 9h
    sayi2 db 3h
    buyuk db ?
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
    
    ;*****************Toplama
    mov bl,sayi1
    add bl,sayi2
    ;*****************Cikarma
    mov bh,sayi1
    sub bh,sayi2
    ;*****************Carpma
    mov cl,sayi1
    mov ch,0
    dongu:
        add dl,sayi2    
    loop dongu
    ;*****************Bolme
    mov al,sayi1
    mov ah,0h
    dongu2:      
        sub al,sayi2
        js cik:  
        inc ah      
        cmp al,0h
        ja dongu2 
    cik:
    mov dh,ah         
    ;*****************Karsilastirma
    mov al,sayi1
    mov ah,sayi2
    cmp al,ah
    ja ilk
    mov buyuk,ah
    jmp son
    ilk:
    mov buyuk,al
    son:   
ends

end start ; set entry point and stop the assembler.
