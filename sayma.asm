
data segment
    sayi db 38h
    
    
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:

    mov ax, data
    mov ds, ax
    
    mov al,sayi
    mov bl,0
    mov cx,8
    
    sayma:
    test al,00111000b
    jz sifir
    inc bl
    
    sifir:
    shl al,1
    loop sayma
    
    
ends

