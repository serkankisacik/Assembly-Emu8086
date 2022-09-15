
data segment
    
 sayi db 3,2,5,7,4,8,6
 sayi1 db 2  

ends

stack segment
    dw   128  dup(0)
ends

code segment
start:

    mov ax, data
    mov ds, ax 
    
    
    mov cx,7
    
    lea si,sayi

    ciftbul:
    
    mov ax,0000
    mov al,[si]
    div sayi1
    cmp ah,0000
    je ciftse
    jmp atla
    
    ciftse:
    inc bl

    jmp atla
    
    atla:    
    
    inc si
    loop ciftbul
    
    
    mov ax, 4c00h 
    int 21h    
ends


 
    mov ax, 4c00h 
    int 21h    
ends
