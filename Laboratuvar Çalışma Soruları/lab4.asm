; multi-segment executable file template.

data segment
    sayi1 db 4
    sayi2 db 2
    toplam dw ?     
    fark dw ? 
    carpim dw ? 
    bolum dw ?
    kalan dw ?
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:
    mov ax, data
    mov ds, ax
    mov es, ax
    
    
    mov al,sayi1
    add al,sayi2
    mov toplam,al
    
    mov ah,sayi2
    sub ah,sayi1
    mov fark,ah
    
    
    mov cx,sayi2
    mov ax,sayi1 
    mov dx,0
    
    CARP:
        add ax,sayi1
        dec cx
        cmp cx,1
        jnz CARP            
    mov carpim,ax 
    
    mov dx,0
    mov cx,sayi1
    ;mov ax,s2
    
    
    BOL: 
        inc dx
        sub cx,sayi2
                   
    cmp cx,sayi2    
    jae BOL 
    mov bolum,dx 
    mov kalan,cx;
    
    
    mov ah,toplam
    mov bh,fark
    mov cx,carp
    mov dx,bolum
    
    
   
ends



end start ; set entry point and stop the assembler.
