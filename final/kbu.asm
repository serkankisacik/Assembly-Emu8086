.model small
    .stack 64
    .data
    yazi db 'Karabuk Universitesi&'
    
    .code
ana proc far
    mov ax,@data
    mov ds,ax
    
    mov al,0
    mov cx,20
    lea si,yazi
    
bas:mov al,[si]
    cmp al,61h
    ja git
    
don:inc si
    loop bas
    
git:sub al,20h
    mov [si],al
    jmp don
    
    mov ah,4ch
    int 21h
    
ana endp
end ana




