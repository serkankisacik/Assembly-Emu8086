; multi-segment executable file template.

data segment
    number1 db 6
    number2 db 2
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
    
    mov al,number1
    add al,number2
    
    mov al,number1
    sub al,number2
    
    mov al,number1
    mul number2
    
    mov al,number1
    div number2
    
    

    ; add your code here
            
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
