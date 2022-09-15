; multi-segment executable file template.

data segment
    sayi1 db 25
    ; add your data here!
    pkey db "press any key...$"
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

    mov cl,12
    mov ax,45aeh
    div cl
    
    mov ax,11
    mov cl,2
    div cl
    
    mov ax,55
    
    mov cl,0
    sub cl,10
    idiv cl
    
    mov ax,2
    inc ax
    
    dec ax
    
            
    lea dx, pkey
    mov ah, 9
    int 21h        ; output string at ds:dx
    
    ; wait for any key....    
    mov ah, 1
    int 21h
    
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.
