
data segment
ends

stack segment
   
ends

code segment
start:

    mov ax, data
    mov ds, ax 
    
    
    mov ax,0001h
    mov bx,0002h 
    
    mov cx,5

    
    topla:
    
    add ax,bx
    inc bx
    
    loop topla:
  
 
    
ends
