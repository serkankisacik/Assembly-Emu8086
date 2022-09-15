

data segment
 str db 'karabuk'
   
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:

    mov ax, data
    mov ds, ax 
    
    lea si,str
    
    mov cx,7
    
    ilerle:
    
    cmp [si],96
    ja buyut
    jmp atla
    
    buyut:
    sub [si],32
    
    atla:
    inc si
    loop ilerle
    
    
    
    mov ax, 4c00h 
    int 21h    
ends

