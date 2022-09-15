; multi-segment executable file template.

data segment
    
ends

stack segment
    
ends

code segment
start:
    
    mov ax,0
    mov bx,0
    mov dx,0
    mov cx,25
    dongu:
        inc ax
        inc dx
        cmp dx,5
        jz artir   
    loop dongu
    jmp son
    
    artir:
        inc bx         
        mov dx,0
        loop dongu
        
    son:

ends

end start 