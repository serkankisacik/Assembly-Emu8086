.model small
.stack 64
.data
sonuc dw ?
.code

ana proc far
    mov ax,@data
    mov ds,ax
    
    mov ax,00
    mov cx,5;100
    
bas1:add ax,cx
    loop bas1;
    
    mov sonuc, ax
    mov ah,4ch
    
    
    mov ax,00
    mov cx,5
    
bas:add ax,cx
    dec cx
    jne bas
    mov sonuc,ax
    mov ah,4ch
    int 21h
    
ana endp
end ana