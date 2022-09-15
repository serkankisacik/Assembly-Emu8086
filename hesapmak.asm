
data segment
    sayi1 dw 6
    sayi2 dw 3
    bolum dw ?
    carpim dw ?
    
ends

stack segment  
    dw 128 dup(0)
   
ends

code segment
start:

    mov ax, data
    mov ds, ax
    
    mov ax,sayi1  
    mov cx,ax
    mov ax,sayi2
    
    carpma:
    
    add carpim,ax
    
    loop carpma  
    
    mov ax,sayi1
    mov bx,1;
    
    
    bolme:
    sub ax,sayi2
    cmp ax,sayi2
    jae atla
      jc cikis
      
    atla:
     inc bx
    
    exit:
    loop bolme 
    
    cikis:
    mov bolum,bx
    
    int 20h
ends
